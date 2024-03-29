<?php  ?><?php

namespace Omnipay\WorldPay;

use Omnipay\Common\AbstractGateway;
use Omnipay\WorldPay\Message\CompletePurchaseRequest;
use Omnipay\WorldPay\Message\PurchaseRequest;

/**
 * WorldPay Gateway
 *
 * @link http://www.worldpay.com/support/kb/bg/htmlredirect/rhtml.html
 */
class Gateway extends AbstractGateway
{
    public function getName()
    {
        return 'WorldPay';
    }

    public function getDefaultParameters()
    {
        return array(
            'installationId' => '',
            'accountId' => '',
            'secretWord' => '',
            'callbackPassword' => '',
            'testMode' => false,
        );
    }

    public function getInstallationId()
    {
        return $this->getParameter('installationId');
    }

    public function setInstallationId($value)
    {
        return $this->setParameter('installationId', $value);
    }

    public function getAccountId()
    {
        return $this->getParameter('accountId');
    }

    public function setAccountId($value)
    {
        return $this->setParameter('accountId', $value);
    }

    public function getSecretWord()
    {
        return $this->getParameter('secretWord');
    }

    public function setSecretWord($value)
    {
        return $this->setParameter('secretWord', $value);
    }

    public function getCallbackPassword()
    {
        return $this->getParameter('callbackPassword');
    }

    public function setCallbackPassword($value)
    {
        return $this->setParameter('callbackPassword', $value);
    }

    public function purchase(array $parameters = array())
    {
        return $this->createRequest('\Omnipay\WorldPay\Message\PurchaseRequest', $parameters);
    }

    public function completePurchase(array $parameters = array())
    {
        return $this->createRequest('\Omnipay\WorldPay\Message\CompletePurchaseRequest', $parameters);
    }
}
