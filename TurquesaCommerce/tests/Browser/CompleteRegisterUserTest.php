<?php

namespace Tests\Browser;

use Illuminate\Foundation\Testing\DatabaseMigrations;
use Laravel\Dusk\Browser;
use Tests\DuskTestCase;
use App\Models\User;

class CompleteRegisterUserTest extends DuskTestCase
{
    /** @test */
    public function check_if_complete_register_are_working()
    {
        $this->user = User::find(9);
        $this->browse(function (Browser $browser) {
            $browser->loginAs($this->user)
                ->visit('users/perfil/create')
                ->type('phone', '(55) 55555-5333')
                ->type('address', 'Rua Teste')
                ->type('birth_date', '20/01/1980')
                ->type('cpf', '555.555.555')
                ->click('button[class="btn btn-primary"]')
                ->assertPathIs('/users/perfil');
        });
    }
}
