<?php

namespace App\Http\Controllers;

use App\Models\Client;
use App\Models\User;
use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index()
    {
        $users = Client::with('user')->get();



        return view('users.index', compact('users'));
    }
    public function show($id)
    {
        $users = Client::with('user')->get();
        return view('users.show', compact('users'));
    }
    public function update_user(Request $request, $id)
    {

        Client::findOrfail($request->id)->update($request->all());
        User::findOrfail($request->id)->update($request->all());

        return redirect()->back();
    }
    public function destroy($id)
    {
        $user = User::find($id);
        $user->delete();

        return redirect()->route('users.index');
    }
}