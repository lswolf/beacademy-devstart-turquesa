<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function index()
    {
        $categories = Category::all();
        return view('category.index', compact('categories'));
    }

    public function create()
    {
        return view('category.create');
    }

    public function store(Request $request)
    {
        $category = new Category();
        $category->name = $request->name;
        $category->save();
        return redirect()->route('category.index');
    }

    public function destroy($id)
    {
        $Category = Category::find($id);
        if (!$Category) {
            return redirect()->route('category.index');
        }
        $Category->delete();
        return redirect()->route('category.index');
    }

    public function edit($id)
    {
        $category = Category::find($id);
        if (!$category) {
            return redirect()->route('category.index');
        }

        return view('category.edit', compact('category'));
    }

    public function update(Request $request)
    {
        Category::findOrfail($request->id)->update($request->all());
        return redirect()->route('category.index');
    }
}