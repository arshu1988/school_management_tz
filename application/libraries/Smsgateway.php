<?php  ?><?php

if (!defined('BASEPATH'))
  exit('No direct script access allowed');

class SmsGateway {

  private $_CI; 

  function __construct() {
   $this->_CI =& get_instance();
   $this->session_name = $this->_CI->setting_model->getCurrentSessionName();
 }


 function sentRegisterSMS($id,$send_to) {


   $sms_detail=$this->_CI->smsconfig_model->getActiveSMS();

   $msg=$this->getStudentRegistrationContent($id);

   if(!empty($sms_detail)){

     if($sms_detail->type == 'clickatell'){

      $params = array(
        'apiToken' => $sms_detail->api_id
        );


      $this->_CI->load->library('clickatell', $params);


      try {
        $result =  $this->_CI->clickatell->sendMessage(['to' => [$send_to], 'content' => $msg]);
        foreach ($result['messages'] as $message) {

        }
        return true;
      } catch (Exception  $e) {
        return false;
      }




    }else if($sms_detail->type == 'twilio'){

      $params = array(
        'mode' => 'sandbox',
        'account_sid' => $sms_detail->api_id,
        'auth_token' => $sms_detail->password,
        'api_version'=>'2010-04-01',

        'number'=>$sms_detail->contact,
        );

      $this->_CI->load->library('twilio',$params);

      $from = $sms_detail->contact;
      $to = $send_to;
      $message = $msg;
      $response = $this->_CI->twilio->sms($from, $to, $message);


      if($response->IsError)
       return false;
     else
       return true;

   }else if($sms_detail->type == 'custom'){
    $this->_CI->load->library('customsms');
    $from = $sms_detail->contact;
    $to = $send_to;
    $message = $msg;
    $this->_CI->customsms->sendSMS($to, $message);


  }else{

  }
}


}


function sentAddFeeSMS($invoice_id,$send_to) {


 $sms_detail=$this->_CI->smsconfig_model->getActiveSMS();

 $msg=$this->getAddFeeContent($invoice_id);

 if(!empty($sms_detail)){

   if($sms_detail->type == 'clickatell'){

    $params = array(
      'apiToken' => $sms_detail->api_id
      );


    $this->_CI->load->library('clickatell', $params);


    try {
      $result =  $this->_CI->clickatell->sendMessage(['to' => [$send_to], 'content' => $msg]);
      foreach ($result['messages'] as $message) {

      }
      return true;
    } catch (Exception  $e) {
      return false;
    }




  }else if($sms_detail->type == 'twilio'){

    $params = array(
      'mode' => 'sandbox',
      'account_sid' => $sms_detail->api_id,
      'auth_token' => $sms_detail->password,
      'api_version'=>'2010-04-01',
      'number'=>$sms_detail->contact,
      );

    $this->_CI->load->library('twilio',$params);

    $from = $sms_detail->contact;
    $to = $send_to;
    $message = $msg;
    $response = $this->_CI->twilio->sms($from, $to, $message);


    if($response->IsError)
     return false;
   else
     return true;

 }else if($sms_detail->type == 'custom'){
   $this->_CI->load->library('customsms');
   $from = $sms_detail->contact;
   $to = $send_to;
   $message = $msg;
   $this->_CI->customsms->sendSMS($to, $message);
 }else{

 }
}


}


public function getStudentRegistrationContent($id){
  $student = $this->_CI->student_model->get($id);
  $msg = "Dear " . $student['firstname'] . " " . $student['lastname'] .
  ", your admission is confirm in Class: " . $student['class'] .
  ", Section: " . $student['section'] . " for Session: " . $this->session_name . ", for more detail contact System Admin.";
  return $msg;
}

public function getAddFeeContent($invoice_id){
 $student_due_fee = $this->_CI->studentfee_model->getFeeByInvoice($invoice_id);
 $fee = ($student_due_fee[0]);
 $fee_amount = number_format((($fee['amount'] + $fee['amount_fine']) - $fee['amount_discount']), 2, '.', ',');
 $msg = "Dear " . $fee['firstname'] . " " . $fee['lastname'] . ", Fees Amount Rs." . $fee_amount . "/-Received, for more detail contact System Admin.";
 return $msg;
}

}
?>