<?php  ?><?php

namespace Omnipay\SagePay\Message;

/**
 * Sage Pay Server Authorize Response
 */
class ServerAuthorizeResponse extends Response
{
    public function isSuccessful()
    {
        return false;
    }

    public function isRedirect()
    {
        return isset($this->data['Status']) &&
           in_array($this->data['Status'], array('OK', 'OK REPEATED'));
    }

    public function getRedirectUrl()
    {
        return isset($this->data['NextURL']) ? $this->data['NextURL'] : null;
    }

    public function getRedirectMethod()
    {
        return 'GET';
    }

    public function getRedirectData()
    {
        return null;
    }
}
