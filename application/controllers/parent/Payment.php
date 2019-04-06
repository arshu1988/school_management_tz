<?php  ?><?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

use Omnipay\Omnipay;
require_once(APPPATH .'third_party/omnipay/vendor/autoload.php');

class Payment extends CI_Controller {

    function __construct() {
        parent::__construct();

        $this->lang->load('message', 'english');
        $this->load->library('Customlib');
        $this->load->library('auth');
        $this->auth->is_logged_in_parent();
    }

    public function pay($feemaster_id, $student_id) {
        $student_record = $this->student_model->get($student_id);
        $fee_record = $this->feemaster_model->get($feemaster_id);
        $api_config = $this->paymentsetting_model->get();
      
        if ($api_config->api_username == "" || $api_config->api_password == "" || $api_config->api_signature == "") {
            $this->session->set_flashdata('error', 'Paypal settings not available');
            redirect($_SERVER['HTTP_REFERER']);
        } else {
            $params = array(
                'cancelUrl' => base_url('parent/payment/getsuccesspayment'),
                'returnUrl' => base_url('parent/payment/getsuccesspayment'),
                'feemaster_id' => $feemaster_id,
                'student_session_id' => $student_record['student_session_id'],
                'name' => $student_record['firstname'] . " " . $student_record['lastname'],
                'description' => $fee_record['type'],
                'amount' => number_format(floatval($fee_record['amount']), 2),
                'currency' => "USD",
            );
            $this->session->set_userdata("params", $params);
            $gateway = Omnipay::create('PayPal_Express');
            $gateway->setUsername($api_config->api_username);
            $gateway->setPassword($api_config->api_password);
            $gateway->setSignature($api_config->api_signature);
            $gateway->setTestMode($api_config->paypal_demo);
            $response = $gateway->purchase($params)->send();
            if ($response->isSuccessful()) {
            } elseif ($response->isRedirect()) {
                $response->redirect();
            } else {
                echo $response->getMessage();
            }
        }
    }

    public function getsuccesspayment() {
        $api_config = array();
        $api_config = $this->paymentsetting_model->get();
        $gateway = Omnipay::create('PayPal_Express');
        $gateway->setUsername($api_config->api_username);
        $gateway->setPassword($api_config->api_password);
        $gateway->setSignature($api_config->api_signature);
        $gateway->setTestMode($api_config->paypal_demo);
        $params = $this->session->userdata('params');
        $response = $gateway->completePurchase($params)->send();
      

        $paypalResponse = $response->getData(); 
        print_r($paypalResponse);
        

        if ($response->isSuccessful()) {
            $purchaseId = $_GET['PayerID'];
            if (isset($paypalResponse['PAYMENTINFO_0_ACK']) && $paypalResponse['PAYMENTINFO_0_ACK'] === 'Success') {                
                if ($purchaseId) {
                    $params = $this->session->userdata('params');
                    $data = array(
                        'amount' => $params['amount'],
                        'date' => date('Y-m-d'),
                        'student_session_id' => $params['student_session_id'],
                        'payment_mode' => 'Paypal',
                        'description' => "Online fees deposit through Paypal",
                        'feemaster_id' => $params['feemaster_id'],
                    );
                    $inserted_id = $this->studentfee_model->add($data);
                    redirect(base_url("parent/payment/successinvoice/" . $inserted_id));
                }
            }
        } elseif ($response->isRedirect()) {
            $response->redirect();
        } else {   
               redirect(base_url("parent/payment/paymentfailed"));   
        }
    }

    public function paymentfailed() {
        $data['title'] = 'Invoice';
        $data['message']="dfsdfds";
         $setting_result = $this->setting_model->get();
        $data['settinglist'] = $setting_result;
        $this->load->view('layout/parent/header', $data);
        $this->load->view('parent/student/paymentfailed', $data);
        $this->load->view('layout/parent/footer', $data);
    }

    public function successinvoice($id) {
        $data['title'] = 'Invoice';
        $setting_result = $this->setting_model->get();
        $data['settinglist'] = $setting_result;
        $studentfee = $this->studentfee_model->getFeeByInvoice($id);
        $data['studentfee'] = $studentfee;
        $this->load->view('layout/parent/header', $data);
        $this->load->view('parent/student/invoice', $data);
        $this->load->view('layout/parent/footer', $data);
    }


}

?>