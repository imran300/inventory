<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/*
 *	@author : Imran Shah
 *  @support: shahmian@gmail.com
 *	date	: 18 April, 2018
 *	Kandi Inventory Management System
 * website: phptiger.com
 *  version: 1.0
 */
class Sales extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Main_model');
        if ($this->session->userdata('user_id')) {
            //
        } else {


            redirect(base_url() . 'index.php/Users/login');
        }
    }

    // creating New Sale Form
    public function new_sale()
    {

        $data['purchase'] = $this->Main_model->item_cat();
        $data['products'] = $this->Main_model->select('item');
        $data['customers'] = $this->Main_model->select('customer');
        $data['companies'] = $this->Main_model->select('company');
        $data['category'] = $this->Main_model->select('category');
        $record = $this->Main_model->get_sales_max();
        $ddd = $record->sales_no;
        $data['sales_no'] = $ddd + 1;
        $this->header($title = 'New Sales');
        $this->load->view('sales/new_sale', $data);
        $this->footer();
    }

    // get product list of sales
    public function get_sale_product_list()
    {
        $cat_id = $this->uri->segment(3);
        $response = $this->Main_model->get_sale_data($cat_id);
        $output = '';
        $output .= '<p onclick="add_product("' . $cat_id . '")" style="cursor: pointer;">';
        $output .= '
					<span class="fa-stack fa-2x text-success">
						<i class="fa fa-circle-o fa-stack-2x"></i>
						<i class="fa fa-plus fa-stack-1x"></i>
					</span>' . $response->item_name . '
				</p>';
        echo $output;
    }

    // get product detail by ajax search
    public function get_details()
    {

        $product_id = $this->input->post('id', true);
        $data = $this->Main_model->get_product_details_v2($product_id);
        if ($data) {
            header('application/json');
            echo json_encode($data);
        } else {
            header('application/json');
            $d = 0;
            echo json_encode($d);
        }
    }

    function imran()
    {
        $product_id = $this->input->post('id', true);
        $data = $this->Main_model->get_product_details_v2($product_id);
        if ($data) {
            echo json_encode($data);
        } else {
            $d = 0;
            echo json_encode($d);
        }
    }

    // Create Invoice
    public function create_invoice_action()
    {
        extract($_POST);
        $invoice_id = $this->input->post('invoice_id');
        $date = date('Y-m-d', strtotime($_POST['sales_date']));
        $post_data = array(
            'sales_date' => $date,
            'customer_id' => $customer_id,
            'company_id' => $company_id,
            'sales_amount_total' => $total_amount,
            'sales_status' => 1,
            'paid' => $paid_amount,
            'balance' => $due_amount,
            'grand_total' => $total_amount,
        );
        if (!empty($invoice_id) && $invoice_id) {
            $this->db->update('invoice', $post_data, ['id' => $invoice_id]);
            $this->db->where('invoice_id', $invoice_id)->delete('invoice_details');
        } else {
            $invoice_no = rand(10000000, 99999);
            $post_data['invoice_no'] = $invoice_no;
            $this->db->insert("sales", $post_data);
            $invoice_id = $this->db->insert_id();
        }

        $product_ids = $this->input->post('product_id');
        $category_id = $this->input->post('category_id');
        $cartons = $this->input->post('cartons');
        $quantity = $this->input->post('quantity');
        $rates = $this->input->post('rates');
        $supplier_rate = $this->input->post('supplier_rate');
        $discounts = $this->input->post('discounts');
        $totals = $this->input->post('totals');

        $data = [];
        foreach ($product_ids as $key => $id) {
            if (strlen($rates[$key]) > 0) {
                $data1 = $this->Main_model->check_stock_record($id, $category_id[$key]);

                if ($data1 == 1) {
                    $data = $this->Main_model->get_stock_qty($id, $category_id[$key]);
                    $ids = $data->stock_qty;
                    $new_id = $ids - $cartons[$key];

                    $data = array(
                        "stock_qty" => $new_id,
                        "stock_rate" => $rates[$key],
                    );
                    $where = array('item_id' => $id, 'category_id' => $category_id[$key]);
                    $this->Main_model->update_record('stock', $data, $where);
                } else {
                    $data = array(
                        "item_id" => $id,
                        "category_id" => $category_id[$key],
                        "stock_qty" => $cartons[$key],
                        "stock_rate" => $rates[$key],
                    );
                    $this->Main_model->add_record('stock', $data);
                }
            }

            $row['sales_no'] = $invoice_id;
            $row['item_id'] = $id;
            $row['sales_qty'] = $cartons[$key];
            $row['sales_rate'] = $rates[$key];
            $row['category_id'] = $category_id[$key];
            $row['sales_amount'] = $totals[$key];
            $data = $row;
            $res = $this->db->insert("sales_detail", $data);
        }
        $this->session->set_flashdata("message", "Invoice #($invoice_id) Added Successfully!");
        redirect(base_url() . "index.php/Sales/sales_history");
    }

    // Sales Table
    public function sale_index()
    {
        $this->Main_model->bps_table('sales', 'sales_no');
    }

    // Sales History or Sales List
    public function sales_history()
    {
        $this->sale_index();
        $dat = array(
            "customer " => " customer.customer_id = sales.customer_id",
            "company" => "company.company_id=sales.company_id"
        );

        $data['sales'] = $this->Main_model->get_join($dat);

        $this->header();
        $this->load->view('sales/sales_history', $data);
        $this->footer();
    }

    // Sale Items Table
    public function salesItems()
    {
        $this->Main_model->bps_table('sales', 'sales_no');
    }

    // Show single sales history in invoice
    public function show_sales_history()
    {
        $id = $this->uri->segment(3);
        $data['salesHist'] = $this->Main_model->getSales_history($id);
        $this->header();
        $data['amount'] = $this->Main_model->getSale_Details($id);
        $this->load->view('sales/item_sales_historynew', $data);
        $this->footer();
    }

    public function invoice_print($id)
    {
        $data['salesHist'] = $this->Main_model->getSales_history($id);

        $data['amount'] = $this->Main_model->getSale_Details($id);
        $this->load->view('sales/invoice_print', $data);
    }
    /*==== get sales items for return =====*/
    function getSalesDataReturn()
    {
        $sales_no = $this->input->post('sales_no');
        $where = array('sales_no' => $sales_no);
        $data['sale_main'] = $this->General->select_where('sales', $where, 'm');
        $data['sale_details'] = $this->db->query("SELECT sd.*, p.`item_id`, p.`item_name`
FROM sales_detail AS sd, item AS p
 WHERE sd.sales_no =  '$sales_no'
 AND p.item_id = sd.item_id")->result_array();

        $this->load->view('sales/sale_return', $data);
    }

    public function saleReturn()
    {
        $SDID = $this->input->post('sales_id');
        $sales_no = $this->input->post('SaleID');
        $UnitPrice = $this->input->post('UnitPrice');
        $ReturnQuantity = $this->input->post('ReturnQuantity');
        $squantity = $this->input->post('squantity');
        $SCID = $this->input->post('supplierID');
        $total_sale = $this->input->post('total_sale');
        $item_id = $this->input->post('item_id');
        $getTotalSale = $total_sale;
        $ReturnBalance = ($UnitPrice * $ReturnQuantity);
        $getTotalSale -= $ReturnBalance;
        //echo "<pre>";print_r($_POST);exit;
        // get the sales return records against this sale item and sales no, if exists update else insert
        $getTotalReturn = $this->db->get_where('sales_return', array('sales_no' => $sales_no, "sales_id" => $SDID));
        //		echo $this->db->last_query();
        if ($getTotalReturn->num_rows() > 0) { // record found, so update the return quantity
            //			echo "here";
            $return_qty = $getTotalReturn->row()->return_qty;
            $ReturnQuantity += $return_qty;

            // update the sales return data
            $this->db->update('sales_return', array('return_qty' => $ReturnQuantity), array('sales_no' => $sales_no, 'sales_id' => $SDID));
        } else { // no records so insert
            //			echo "else";
            $data = array(
                "sales_no" => $sales_no,
                "sales_id" => $SDID,
                //				"sales_date"=> date("Y-m-d"),
                "return_date" => date("Y-m-d"),
                "item_id" => $item_id,
                "sales_qty" => $squantity,
                "return_qty" => $ReturnQuantity,
                "sales_amount" => $total_sale,
                "sales_rate" => $UnitPrice
            );
            $this->db->insert('sales_return', $data);
            //				echo $this->db->last_query();
        }
        // get stock quantity for an item
        $data = $this->Main_model->get_stock_qty($item_id, '');
        $ids = $data->stock_qty;
        //echo $ids;exit;
        // update stock

        $stock = array(
            "item_id" => $item_id,
            "stock_qty" => $ids + $ReturnQuantity,
        );
        $where_stk = array("item_id" => $item_id);
        $this->db->update('stock', $stock, $where_stk);
        if ($this->db->trans_status() == FALSE) {
            $this->db->trans_rollback();
            $json = array("type" => "error", "response" => 'Their was some error. Please try again.');
            header("application/json");
            echo json_encode($json);
        } else {
            $this->db->trans_commit();
            $json = array("type" => "success", "response" => 'Record Added Successfully');
            header("application/json");
            echo json_encode($json);
        }
    }
}
