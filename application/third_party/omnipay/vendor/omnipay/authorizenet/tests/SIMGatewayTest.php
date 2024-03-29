<?php  ?><?php

namespace Omnipay\AuthorizeNet;

use Omnipay\Tests\GatewayTestCase;

class SIMGatewayTest extends GatewayTestCase
{
    /** @var SIMGateway */
    protected $gateway;

    public function setUp()
    {
        parent::setUp();

        $this->gateway = new SIMGateway($this->getHttpClient(), $this->getHttpRequest());
        $this->gateway->setApiLoginId('example');
        $this->gateway->setHashSecret('elpmaxe');

        $this->options = array(
            'amount' => '10.00',
            'transactionId' => '99',
            'returnUrl' => 'https://www.example.com/return',
        );
    }

    public function testLiveEndpoint()
    {
        $this->assertEquals(
            'https://secure2.authorize.net/gateway/transact.dll',
            $this->gateway->getLiveEndpoint()
        );
    }

    public function testDeveloperEndpoint()
    {
        $this->assertEquals(
            'https://test.authorize.net/gateway/transact.dll',
            $this->gateway->getDeveloperEndpoint()
        );
    }

    public function testAuthorize()
    {
        $response = $this->gateway->authorize($this->options)->send();

        $this->assertFalse($response->isSuccessful());
        $this->assertTrue($response->isRedirect());
        $this->assertNotEmpty($response->getRedirectUrl());

        $redirectData = $response->getRedirectData();
        $this->assertSame('https://www.example.com/return', $redirectData['x_relay_url']);
    }

    public function testCompleteAuthorize()
    {
        $this->getHttpRequest()->request->replace(
            array(
                'x_response_code' => '1',
                'x_trans_id' => '12345',
                'x_amount' => '10.00',
                'x_MD5_Hash' => md5('elpmaxe' . 'example' . '12345' . '10.00'),
            )
        );

        $response = $this->gateway->completeAuthorize($this->options)->send();

        $this->assertTrue($response->isSuccessful());
        $this->assertSame('12345', $response->getTransactionReference());
        $this->assertNull($response->getMessage());
    }

    public function testPurchase()
    {
        $response = $this->gateway->purchase($this->options)->send();

        $this->assertFalse($response->isSuccessful());
        $this->assertTrue($response->isRedirect());
        $this->assertNotEmpty($response->getRedirectUrl());

        $redirectData = $response->getRedirectData();
        $this->assertSame('https://www.example.com/return', $redirectData['x_relay_url']);
    }

    public function testCompletePurchase()
    {
        $this->getHttpRequest()->request->replace(
            array(
                'x_response_code' => '1',
                'x_trans_id' => '12345',
                'x_amount' => '10.00',
                'x_MD5_Hash' => md5('elpmaxe' . 'example' . '12345' . '10.00'),
            )
        );

        $response = $this->gateway->completePurchase($this->options)->send();

        $this->assertTrue($response->isSuccessful());
        $this->assertSame('12345', $response->getTransactionReference());
        $this->assertNull($response->getMessage());
    }
}
