<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');
/*
 *	@author : Imran Shah
 *  @support: shahmian@gmail.com
 *	date	: 18 April, 2018
 *	Kandi Inventory Management System
 * website: kelextech.com
 *  version: 1.0
 */
class Stock extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('user_id')) {
        } else {


            redirect(base_url() . 'index.php/Users/login');

        }

    }


    // company detail form

    public function list_stock()
    {

        $data['stock'] = $this->Main_model->stock_cat();
        $data['category'] = $this->Main_model->select('category');
        $this->header();
        $this->load->view('stock/list_stock', $data);
        $this->footer();

    }


    public function update_stock()
    {
        error_reporting(E_ALL);
        $stock_id = $this->input->post('stock_no');

        $stock = array(
            'stock_qty' => $this->input->post('stock_qty'),
            'purchase_rate' => $this->input->post('purchase_rate'),
            'stock_rate' => $this->input->post('stock_rate'),
        );
        $where = array('stock_no' => $stock_id);
        $this->load->model('Main_model');
        $response = $this->Main_model->update_record('stock', $stock, $where);
        if ($response) {
            $this->session->set_flashdata('success', '<div class="alert alert-success alert-dismissable">
   <button type="button" class="close" data-dismiss="alert"
      aria-hidden="true">
      &times;
   </button>
   <span>Record Updated Successfully..!</span>
</div>');

        }
        redirect(base_url() . 'index.php/Stock/list_stock');
    }


}