<?php  ?><?php

namespace Omnipay\Eway\Message;

use Omnipay\Tests\TestCase;

class RapidDirectPurchaseRequestTest extends TestCase
{
    public function setUp()
    {
        $this->request = new RapidDirectPurchaseRequest($this->getHttpClient(), $this->getHttpRequest());
        $this->request->initialize(array(
            'apiKey' => 'my api key',
            'password' => 'secret',
            'amount' => '10.00',
            'transactionType' => 'Purchase',
            'card' => array(
                'firstName' => 'John',
                'lastName' => 'Smith',
                'number' => '4111111111111111',
                'expiryMonth' => '12',
                'expiryYear' => gmdate('Y') + rand(1, 5),
                'cvv' => rand(100, 999),
            ),
        ));
    }

    public function testGetData()
    {
        $this->request->initialize(array(
            'apiKey' => 'my api key',
            'password' => 'secret',
            'partnerId' => '1234',
            'transactionType' => 'Purchase',
            'shippingMethod' => 'NextDay',
            'amount' => '10.00',
            'transactionId' => '999',
            'description' => 'new car',
            'currency' => 'AUD',
            'invoiceReference' => 'INV-123',
            'clientIp' => '127.0.0.1',
            'card' => array(
                'firstName' => 'John',
                'lastName' => 'Smith',
                'shippingFirstName' => 'Bob',
                'shippingLastName' => 'Mann',
                'shippingAddress1' => 'Level 1',
                'shippingAddress2' => '123 Test Lane',
                'shippingState' => 'NSW',
                'shippingCountry' => 'AU',
                'number' => '4111111111111111',
                'expiryMonth' => '12',
                'expiryYear' => gmdate('Y') + rand(1, 5),
                'cvv' => rand(100, 999),
                'startMonth' => '01',
                'startYear' => '13',
                'issueNumber' => '1',
            ),
        ));

        $data = $this->request->getData();

        $this->assertSame('ProcessPayment', $data['Method']);
        $this->assertSame('127.0.0.1', $data['CustomerIP']);
        $this->assertSame('1234', $data['PartnerID']);
        $this->assertSame('Purchase', $data['TransactionType']);
        $this->assertSame('NextDay', $data['ShippingMethod']);
        $this->assertSame(1000, $data['Payment']['TotalAmount']);
        $this->assertSame('999', $data['Payment']['InvoiceNumber']);
        $this->assertSame('new car', $data['Payment']['InvoiceDescription']);
        $this->assertSame('INV-123', $data['Payment']['InvoiceReference']);
        $this->assertSame('AUD', $data['Payment']['CurrencyCode']);
        $this->assertSame('John', $data['Customer']['FirstName']);
        $this->assertSame('Smith', $data['Customer']['LastName']);
        $this->assertSame('Bob', $data['ShippingAddress']['FirstName']);
        $this->assertSame('Mann', $data['ShippingAddress']['LastName']);
        $this->assertSame('NSW', $data['ShippingAddress']['State']);
        $this->assertSame('au', $data['ShippingAddress']['Country']);
        $this->assertSame('4111111111111111', $data['Customer']['CardDetails']['Number']);
        $this->assertSame('12', $data['Customer']['CardDetails']['ExpiryMonth']);
        $this->assertSame('01', $data['Customer']['CardDetails']['StartMonth']);
        $this->assertSame('13', $data['Customer']['CardDetails']['StartYear']);
        $this->assertSame('1', $data['Customer']['CardDetails']['IssueNumber']);
    }

    public function testGetDataWithToken()
    {
        $this->request->initialize(array(
            'apiKey' => 'my api key',
            'password' => 'secret',
            'transactionType' => 'MOTO',
            'amount' => '10.00',
            'transactionId' => '999',
            'description' => 'new car',
            'currency' => 'AUD',
            'invoiceReference' => 'INV-123',
            'cardReference' => '87654321',
        ));

        $data = $this->request->getData();

        $this->assertSame('87654321', $data['Customer']['TokenCustomerID']);
        $this->assertSame('TokenPayment', $data['Method']);
        $this->assertSame('MOTO', $data['TransactionType']);
    }

    public function testGetDataWithEncryption()
    {
        $this->request->initialize(array(
            'apiKey' => 'my api key',
            'password' => 'secret',
            'partnerId' => '1234',
            'transactionType' => 'Purchase',
            'shippingMethod' => 'NextDay',
            'amount' => '10.00',
            'transactionId' => '999',
            'description' => 'new car',
            'currency' => 'AUD',
            'invoiceReference' => 'INV-123',
            'clientIp' => '127.0.0.1',
            'encryptedCardNumber' => 'eCrypted:YVe4GMLMSxF5m1nixtBvVlmaLDgjI+ZYM5GHuX1XjlbRTnhe/khA2csWblJDqaQE9S4BV+y4Xnf61GmRDNC9yLBVduGFuigHJ8rk360m580fYOiHy+OaZpgpRvHPw==',
            'encryptedCardCvv' => 'eCrypted:ZvEfRd1DHwJ7dYV59DZqoaCFujvK+26VKS9Tp3uGp5kVki8CHpy67WUaFqqDzjZ8C6e3+TUXtW6/rrXGYYIXMfbph4Uw+XyLja3MJzOGniULWJA5zt90wxRwpZeYGDNQ==',
            'card' => array(
                'firstName' => 'John',
                'lastName' => 'Smith',
                'shippingFirstName' => 'Bob',
                'shippingLastName' => 'Mann',
                'shippingAddress1' => 'Level 1',
                'shippingAddress2' => '123 Test Lane',
                'shippingState' => 'NSW',
                'shippingCountry' => 'AU',
                'expiryMonth' => '12',
                'expiryYear' => gmdate('Y') + rand(1, 5),
                'startMonth' => '01',
                'startYear' => '13',
                'issueNumber' => '1',
            ),
        ));

        $data = $this->request->getData();

        $this->assertSame('ProcessPayment', $data['Method']);
        $this->assertSame('127.0.0.1', $data['CustomerIP']);
        $this->assertSame('1234', $data['PartnerID']);
        $this->assertSame('Purchase', $data['TransactionType']);
        $this->assertSame('au', $data['ShippingAddress']['Country']);
        $this->assertSame('eCrypted:YVe4GMLMSxF5m1nixtBvVlmaLDgjI+ZYM5GHuX1XjlbRTnhe/khA2csWblJDqaQE9S4BV+y4Xnf61GmRDNC9yLBVduGFuigHJ8rk360m580fYOiHy+OaZpgpRvHPw==', $data['Customer']['CardDetails']['Number']);
        $this->assertSame('eCrypted:ZvEfRd1DHwJ7dYV59DZqoaCFujvK+26VKS9Tp3uGp5kVki8CHpy67WUaFqqDzjZ8C6e3+TUXtW6/rrXGYYIXMfbph4Uw+XyLja3MJzOGniULWJA5zt90wxRwpZeYGDNQ==', $data['Customer']['CardDetails']['CVN']);
        $this->assertSame('01', $data['Customer']['CardDetails']['StartMonth']);
        $this->assertSame('13', $data['Customer']['CardDetails']['StartYear']);
        $this->assertSame('1', $data['Customer']['CardDetails']['IssueNumber']);
    }


    public function testGetDataWithItems()
    {
        $this->request->initialize(array(
            'apiKey' => 'my api key',
            'password' => 'secret',
            'amount' => '10.00',
            'transactionType' => 'Purchase',
            'transactionId' => '999',
            'description' => 'new car',
            'currency' => 'AUD',
            'clientIp' => '127.0.0.1',
            'card' => array(
                'firstName' => 'John',
                'lastName' => 'Smith',
                'number' => '4111111111111111',
                'expiryMonth' => '12',
                'expiryYear' => gmdate('Y') + rand(1, 5),
                'cvv' => rand(100, 999),
            ),
        ));

        $this->request->setItems(array(
            array('name' => 'Floppy Disk', 'description' => 'MS-DOS', 'quantity' => 2, 'price' => 10),
            array('name' => 'CD-ROM', 'description' => 'Windows 95', 'quantity' => 1, 'price' => 40),
        ));

        $data = $this->request->getData();

        $this->assertSame('Floppy Disk', $data['Items'][0]['SKU']);
        $this->assertSame('MS-DOS', $data['Items'][0]['Description']);
        $this->assertSame('2', $data['Items'][0]['Quantity']);
        $this->assertSame('1000', $data['Items'][0]['UnitCost']);

        $this->assertSame('CD-ROM', $data['Items'][1]['SKU']);
        $this->assertSame('Windows 95', $data['Items'][1]['Description']);
        $this->assertSame('1', $data['Items'][1]['Quantity']);
        $this->assertSame('4000', $data['Items'][1]['UnitCost']);
    }

    public function testSendSuccess()
    {
        $this->setMockHttpResponse('RapidDirectPurchaseRequestSuccess.txt');
        $response = $this->request->send();

        $this->assertTrue($response->isSuccessful());
        $this->assertFalse($response->isRedirect());
        $this->assertSame('11355498', $response->getTransactionReference());
        $this->assertSame('Transaction Approved', $response->getMessage());
    }

    public function testSendFailure()
    {
        $this->setMockHttpResponse('RapidDirectPurchaseRequestFailure.txt');
        $response = $this->request->send();

        $this->assertFalse($response->isSuccessful());
        $this->assertFalse($response->isRedirect());
        $this->assertNull($response->getTransactionReference());
        $this->assertSame('Invalid TotalAmount', $response->getMessage());
        $this->assertSame('V6011', $response->getCode());
    }
}
