<?php  ?><?php
/**
 * MultiSafepay XML Api Fetch Issuers Request.
 */

namespace Omnipay\MultiSafepay\Message;

use SimpleXMLElement;

/**
 * MultiSafepay XML Api Fetch Issuers Request.
 *
 * @deprecated This API is deprecated and will be removed in
 * an upcoming version of this package. Please switch to the Rest API.
 */
class FetchIssuersRequest extends AbstractRequest
{
    /**
     * {@inheritdoc}
     */
    public function getData()
    {
        $data = new SimpleXMLElement('<?xml version="1.0" encoding="UTF-8"?><idealissuers/>');
        $data->addAttribute('ua', $this->userAgent);

        $merchant = $data->addChild('merchant');
        $merchant->addChild('account', $this->getAccountId());
        $merchant->addChild('site_id', $this->getSiteId());
        $merchant->addChild('site_secure_code', $this->getSiteCode());

        return $data;
    }

    /**
     * {@inheritdoc}
     */
    public function sendData($data)
    {
        $httpResponse = $this->httpClient->post(
            $this->getEndpoint(),
            $this->getHeaders(),
            $data->asXML()
        )->send();

        $this->response = new FetchIssuersResponse(
            $this,
            $httpResponse->xml()
        );

        return $this->response;
    }
}
