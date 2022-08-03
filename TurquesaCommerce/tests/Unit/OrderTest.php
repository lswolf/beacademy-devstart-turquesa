<?php

namespace Tests\Unit;

use App\Models\Order;
use PHPUnit\Framework\TestCase;

class OrderTest extends TestCase
{
    /** @test */
    public function check_if_order_columns_are_working()
    {
        $order = new Order();
        $expected = [
            'user_id',
            'status'
        ];
        $arrayCompared = array_diff($expected, $order->getFillable());
        $this->assertEquals(0, count($arrayCompared));
    }
}
