<?php  ?><?php

namespace Omnipay\AuthorizeNet\Message;

/**
 * Authorize.Net AIM Purchase Request
 */
class AIMPurchaseRequest extends AIMAuthorizeRequest
{
    protected $action = 'authCaptureTransaction';
}
