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
class Customer extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        if ($this->session->userdata('user_id')) {
        } else {


            redirect(base_url() . 'index.php/Users/login');

        }

    }


    // Add Customer Form
    public function add_customer()
    {
        $Page = $this->General->check_url_permission_single();
        $this->header($title = 'Add Customer');

        $this->load->view('customer/add_customer');

        $this->footer();

    }
    // List Customers
    public function list_customers()
    {
        $group_id = $this->session->userdata("group_id");
        if($group_id !=1){
            $Page = $this->General->check_url_permission_single();
        }
        $data['customers'] = $this->General->fetch_records("customer");
        $this->header($title = 'Customers List');
        $this->load->view('customer/list_customers', $data);
        $this->footer();


    }
    // Customer Details
    public function customer_detail()
    {
        $Page = $this->General->check_url_permission_single();
        $this->header($title = 'Customer Detail');

        $this->load->view('customer/cust_details');

        $this->footer();
    }
    // Insert new Customer to Databse
    public function insert_customer()
    {
        extract($_POST);
        $data = array(
            'customer_name' => $this->input->post("customer_name"),
            'phone_no' => $this->input->post("phone_no"),
            'fax_no' => $this->input->post("fax_no"),
            'email' => $this->input->post("email"),
            'address' => $this->input->post("address"),
            'trn' => $this->input->post("trn"),
        );
        
        $response = $this->Main_model->add_record('customer', $data);
        if ($response) {
            $this->session->set_flashdata('msg', 'Customer added Successfully..!');
            redirect(base_url() . 'index.php/customer/list_customers');
        }
    }
    // Update Customer Details
    public function update_customer()
    {
        $custid = $this->input->post('cid');

        $cust_info = array(
            'customer_name' => $this->input->post('cname'),
            'phone_no' => $this->input->post('caddress'),
            'fax_no' => $this->input->post('coldno'),
            'email' => $this->input->post('ccell')
        );


        $where = array('customer_id' => $custid);
        $this->load->model('Main_model');
        $response = $this->Main_model->update_record('customer', $cust_info, $where);
        if ($response) {
            $this->session->set_flashdata('msg', 'Customer Updated Successfully..!');
            redirect(base_url() . 'index.php/customer/list_customers');
        } else {
            $this->session->set_flashdata('warning', 'Customer didnt updated..!');
            redirect(base_url() . 'index.php/customer/list_customers');


        }
    }


}