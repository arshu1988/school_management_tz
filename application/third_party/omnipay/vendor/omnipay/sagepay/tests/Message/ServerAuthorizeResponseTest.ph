<?php  ?><?php

namespace Omnipay\SagePay\Message;

use Omnipay\Tests\TestCase;

class ServerAuthorizeResponseTest extends TestCase
{
    public function setUp()
    {
        $this->getMockRequest()->shouldReceive('getTransactionId')->andReturn('123456');
    }

    public function testServerPurchaseSuccess()
    {
        $httpResponse = $this->getMockHttpResponse('ServerPurchaseSuccess.txt');
        $response = new ServerAuthorizeResponse($this->getMockRequest(), $httpResponse->getBody());

        $this->assertFalse($response->isSuccessful());
        $this->assertTrue($response->isRedirect());
        $this->assertSame('{"SecurityKey":"IK776BWNHN","VPSTxId":"{1E7D9C70-DBE2-4726-88EA-D369810D801D}","VendorTxCode":"123456"}', $response->getTransactionReference());
        $this->assertSame('Server transaction registered successfully.', $response->getMessage());
        $this->assertSame('https://test.sagepay.com/Simulator/VSPServerPaymentPage.asp?TransactionID={1E7D9C70-DBE2-4726-88EA-D369810D801D}', $response->getRedirectUrl());
        $this->assertSame('GET', $response->getRedirectMethod());
        $this->assertNull($response->getRedirectData());
    }


    public function testServerPurchaseRepeated()
    {
        $response = new ServerAuthorizeResponse($this->getMockRequest(), 'Status=OK REPEATED');

        $this->assertFalse($response->isSuccessful());
        $this->assertTrue($response->isRedirect());
    }

    public function testServerPurchaseFailure()
    {
        $httpResponse = $this->getMockHttpResponse('ServerPurchaseFailure.txt');
        $response = new ServerAuthorizeResponse($this->getMockRequest(), $httpResponse->getBody());

        $this->assertFalse($response->isSuccessful());
        $this->assertFalse($response->isRedirect());
        $this->assertSame('{"VendorTxCode":"123456"}', $response->getTransactionReference());
        $this->assertSame('3082 : The Description value is too long.', $response->getMessage());
    }
}
