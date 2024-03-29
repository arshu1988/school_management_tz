<?php  ?><?php

namespace Omnipay\Eway\Message;

use Omnipay\Common\Message\AbstractRequest;

/**
 * eWAY Direct Void Request
 */
class DirectVoidRequest extends DirectAbstractRequest
{
    protected $liveEndpoint = 'https://www.eway.com.au/gateway/xmlauthvoid.asp';
    protected $testEndpoint = 'https://www.eway.com.au/gateway/xmltest/authvoidtestpage.asp';

    public function getData()
    {
        $this->validate('transactionId');

        $xml = '<?xml version="1.0"?><ewaygateway></ewaygateway>';
        $sxml = new \SimpleXMLElement($xml);

        /* eWAY Customer Id */
        $sxml->addChild('ewayCustomerID', $this->getCustomerId());

        /* eWAY Transaction Details */
        $sxml->addChild('ewayTotalAmount', $this->getAmountInteger());
        $sxml->addChild('ewayAuthTrxnNumber', $this->getTransactionId());

        $sxml->addChild('ewayOption1', $this->getOption1());
        $sxml->addChild('ewayOption2', $this->getOption2());
        $sxml->addChild('ewayOption3', $this->getOption3());

        return $sxml;
    }
}
