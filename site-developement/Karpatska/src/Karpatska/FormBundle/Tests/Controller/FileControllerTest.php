<?php

namespace Karpatska\FormBundle\Tests\Controller;

use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

class FileControllerTest extends WebTestCase
{
    public function testFileupload()
    {
        $client = static::createClient();

        $crawler = $client->request('GET', '7');
    }

}
