<?php  ?><?php
/**
 * MultiSafepay Rest Api Abstract Response class.
 */

namespace Omnipay\MultiSafepay\Message;

use Omnipay\Common\Message\AbstractResponse;

/**
 * MultiSafepay Rest Api Abstract Response class.
 *
 * All Response classes within the Rest namespace
 * inheritance from this class.
 */
abstract class RestAbstractResponse extends AbstractResponse
{
    /**
     * Is the response successful?
     *
     * @return boolean
     */
    public function isSuccessful()
    {
        if (! isset($this->data['success'])) {
            return false;
        }

        return $this->data['success'];
    }

    /**
     * Response Message.
     *
     * @return null|string A response message from the payment gateway
     */
    public function getMessage()
    {
        if (!$this->isSuccessful() && isset($this->data['error_info'])) {
            return $this->data['error_info'];
        }
    }

    /**
     * Response code.
     *
     * @return null|string A response code from the payment gateway
     */
    public function getCode()
    {
        if (! $this->isSuccessful() && isset($this->data['error_code'])) {
            return $this->data['error_code'];
        }
    }

    /**
     * Gateway Reference.
     *
     * @return null|string A reference provided by the gateway to represent this transaction
     */
    public function getTransactionReference()
    {
        if (isset($this->data['data']['transaction_id'])) {
            return $this->data['data']['transaction_id'];
        }
    }

    /**
     * Get the transaction ID as generated by the merchant website.
     *
     * @return string
     */
    public function getTransactionId()
    {
        if (isset($this->data['data']['order_id'])) {
            return $this->data['data']['order_id'];
        }
    }
}
