<?php

namespace Tests\Browser;

use Illuminate\Foundation\Testing\DatabaseMigrations;
use Laravel\Dusk\Browser;
use Tests\DuskTestCase;
use App\Models\User;

class RegisterUserTest extends DuskTestCase
{
    /** @test */
    public function check_if_register_user_are_working()
    {
        $this->browse(function (Browser $browser) {
            $browser->visit('/register')
                ->type('name', 'User Teste')
                ->type('email', 'userteste@email.com.br')
                ->type('password', '123456789')
                ->type('password_confirmation', '123456789')
                ->click('button[type="submit"]')
                ->assertPathIs('/');
        });
    }
}
