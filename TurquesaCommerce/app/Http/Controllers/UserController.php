<?php

namespace App\Http\Controllers;

use App\Models\Client;
use Illuminate\Http\Request;
use App\Models\User;
<<<<<<< HEAD
use App\Http\Controllers\Auth;

use PhpParser\Node\Stmt\TryCatch;
=======
use App\Http\Requests\StoreUpdateUserFormRequest;
>>>>>>> main

class UserController extends Controller
{

    public function profile()
    {
        $users = Client::with('user')->get();


        return view('users.profile', compact('users'));
    }

    public function profile_create()
    {
        $users = Client::with('user')->get();

<<<<<<< HEAD
=======
    public function store(StoreUpdateUserFormRequest $request)
    {
        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->save();
        return redirect()->route('users.index');
    }
>>>>>>> main

        return view('users.profile_create', compact('users'));
    }
<<<<<<< HEAD
    public function update(Request $request, $id)
=======

    public function update(StoreUpdateUserFormRequest $request, $id)
>>>>>>> main
    {

        Client::findOrfail($request->id)->update($request->all());

        return redirect()->route('users.profile');
    }
    public function store(Request $request)
    {

        $clients = new Client();
        $clients->phone = $request->phone;
        $clients->address = $request->address;
        $clients->user_id = $request->user_id;
        $clients->birth_date = $request->birth_date;
        $clients->cpf = $request->cpf;

        $clients->save();

        return redirect()->route('users.profile');
    }
}