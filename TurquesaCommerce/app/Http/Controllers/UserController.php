<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    public function index()
    {
        $users = User::all();
        return view('users.index', compact('users'));
    }

    public function create()
    {
        return view('users.create');
    }

    public function store(Request $request)
    {
        $user = new User;
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->save();
        return redirect()->route('users.index');
    }

    public function edit($id)
    {
        $user = User::find($id);
        return ($user) ? view('users.edit', compact('user')) : redirect()->route('users.index');
    }

    public function update(Request $request, $id)
    {
        $user = User::find($id);
        
        if(!$user) 
            return redirect()->route('users.index');
        
        $data = $request->only('name', 'email');

        if($request->password)
            $data['password'] = bcrypt($request->password);
        
        $user->update($data);

        return redirect()->route('users.index');
        
    }

    public function destroy($id)
    {
        $user = User::find($id);
        $user->delete();
        return redirect()->route('users.index');
    }
}
