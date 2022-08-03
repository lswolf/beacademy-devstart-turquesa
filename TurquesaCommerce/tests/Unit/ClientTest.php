<?php

namespace Tests\Unit;

use PHPUnit\Framework\TestCase;
use App\Models\Client;

class ClientTest extends TestCase
{
    /** @test */
    public function check_if_clients_columns_are_correct()
    {
        $client = new Client;

        $expected = ['phone', 'address', 'birth_date', 'cpf'];

        $arrayCompared = array_diff($expected, $client->getFillable());
        $this->assertEquals(0, count($arrayCompared));
    }
}
