<?php

namespace Tests\Browser;

use Illuminate\Foundation\Testing\DatabaseMigrations;
use Laravel\Dusk\Browser;
use Tests\DuskTestCase;
use App\Models\User;

class RegisterOrderTest extends DuskTestCase
{
    /** @test */
    public function check_if_create_order_are_working()
    {
        $this->user = User::find(5);
        $this->browse(function (Browser $browser) {
            $browser->loginAs($this->user)
            ->visit('/products/show-item/4')
                    ->click('button[class="btn btn-info"]')
                    ->assertPathIs('/carrinho');
        });
    }
}
