<?php

namespace Tests\Unit;

use PHPUnit\Framework\TestCase;
use App\Models\CardProduct;

class CardProductTest extends TestCase
{
    /** @test */
    public function check_if_cardproducts_columns_are_correct()
    {
        $card_product = new CardProduct();
        $expected = [
            'order_id',
            'product_id',
            'value ',
            'status'
        ];
        $arrayCompared = array_diff($expected, $card_product->getFillable());
        $this->assertEquals(0, count($arrayCompared));
    }
}
