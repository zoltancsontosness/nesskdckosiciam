<?php

namespace Karpatska\FormBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class CompanyControllerTest extends WebTestCase
{
    public function testRegister()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '/register');
    }

}
