<?php  ?><?php

namespace Omnipay\Payflow\Message;

use Omnipay\Common\Message\AbstractRequest;

/**
 * Payflow Authorize Request
 */
class AuthorizeRequest extends AbstractRequest
{
    protected $liveEndpoint = 'https://payflowpro.paypal.com';
    protected $testEndpoint = 'https://pilot-payflowpro.paypal.com';
    protected $action = 'A';

    public function getUsername()
    {
        return $this->getParameter('username');
    }

    public function setUsername($value)
    {
        return $this->setParameter('username', $value);
    }

    public function getPassword()
    {
        return $this->getParameter('password');
    }

    public function setPassword($value)
    {
        return $this->setParameter('password', $value);
    }

    public function getVendor()
    {
        return $this->getParameter('vendor');
    }

    public function setVendor($value)
    {
        return $this->setParameter('vendor', $value);
    }

    public function getPartner()
    {
        return $this->getParameter('partner');
    }

    public function setPartner($value)
    {
        return $this->setParameter('partner', $value);
    }

    public function getComment1()
    {
        return $this->getDescription();
    }

    public function setComment1($value)
    {
        return $this->setDescription($value);
    }

    public function getComment2()
    {
        return $this->getParameter('comment2');
    }

    public function setComment2($value)
    {
        return $this->setParameter('comment2', $value);
    }

    protected function getBaseData()
    {
        $data = array();
        $data['TRXTYPE'] = $this->action;
        $data['USER'] = $this->getUsername();
        $data['PWD'] = $this->getPassword();
        $data['VENDOR'] = $this->getVendor();
        $data['PARTNER'] = $this->getPartner();

        return $data;
    }

    public function getData()
    {
        $this->validate('amount', 'card');
        $this->getCard()->validate();

        $data = $this->getBaseData();
        $data['TENDER'] = 'C';
        $data['AMT'] = $this->getAmount();
        $data['COMMENT1'] = $this->getDescription();
        $data['COMMENT2'] = $this->getComment2();
        $data['ORDERID'] = $this->getTransactionId();

        $data['ACCT'] = $this->getCard()->getNumber();
        $data['EXPDATE'] = $this->getCard()->getExpiryDate('my');
        $data['CVV2'] = $this->getCard()->getCvv();
        $data['BILLTOFIRSTNAME'] = $this->getCard()->getFirstName();
        $data['BILLTOLASTNAME'] = $this->getCard()->getLastName();
        $data['BILLTOSTREET'] = $this->getCard()->getAddress1();
        $data['BILLTOCITY'] = $this->getCard()->getCity();
        $data['BILLTOSTATE'] = $this->getCard()->getState();
        $data['BILLTOZIP'] = $this->getCard()->getPostcode();
        $data['BILLTOCOUNTRY'] = $this->getCard()->getCountry();

        return $data;
    }

    public function sendData($data)
    {
        $httpResponse = $this->httpClient->post(
            $this->getEndpoint(),
            null,
            $this->encodeData($data)
        )->send();

        return $this->response = new Response($this, $httpResponse->getBody());
    }

    /**
     * Encode absurd name value pair format
     */
    public function encodeData(array $data)
    {
        $output = array();
        foreach ($data as $key => $value) {
            $output[] = $key.'['.strlen($value).']='.$value;
        }

        return implode('&', $output);
    }

    protected function getEndpoint()
    {
        return $this->getTestMode() ? $this->testEndpoint : $this->liveEndpoint;
    }
}
