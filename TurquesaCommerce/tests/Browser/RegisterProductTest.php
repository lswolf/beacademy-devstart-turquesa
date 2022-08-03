<?php

namespace Tests\Browser;

use Illuminate\Foundation\Testing\DatabaseMigrations;
use Laravel\Dusk\Browser;
use Tests\DuskTestCase;
use App\Models\User;


class RegisterProductTest extends DuskTestCase
{
    /** @test */
    public function check_if_register_product_are_working()
    {
        $this->user = User::find(5);
        $this->browse(function (Browser $browser) {
            $browser->loginAs($this->user)
                    ->visit('/products/create')
                    ->type('name', 'Produto Teste')
                    ->type('description', 'Descrição do Produto Teste')
                    ->attach('photo', storage_path('public/img/testing.png'))
                    ->type('url', 'www.google.com')
                    ->type('cost_price', '10')
                    ->type('sale_price', '20')
                    ->click('button[class="btn"]')
                    ->assertPathIs('/products');

        });
    }
}
