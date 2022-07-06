<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
//use App\Http\Requests\StoreUpdateProductFormRequest;

class ProductController extends Controller
{
    public function __construct(Product $product)
    {
        $this->model = $product;
    }

    public function index()
    {
        $products = Product::paginate(10);

        return view('products.index', compact('products'));
    }

    public function show($id)
    {
        if(!$product = Product::find($id))
            return redirect()->route('product.index');

        $title = 'Livro: ' . $product->name;

        return view('product.show', compact('product', 'title'));
    }

    public function create()
    {
        return view('product.create');
    }

    public function store(Request $request)
    {
        $product = new Product();
        $product->name = $request->name;
        $product->description = $request->description;
        $product->photo = $request->photo;
        $product->url = $request->url;
        $product->cost_price = $request->cost_price;
        $product->sale_price = $request->sale_price;
        $product->category_id = $request->category_id;
        $product->save();

        return view('product.create');
    }

    public function edit($id)
    {
        if(!$product = $this->model->find($id))
            return redirect()->route('product.index');

        return view('product.edit', compact('product'));
    }

    public function update(StoreUpdateProductFormRequest $request, $id)
    {
        if(!$product = $this->model->find($id))
            return redirect()->route('product.index');

        $data = $request->all();

        $product->update($data);

        return redirect()->route('product.index');
    }

    public function delete($id)
    {
        if(!$product = $this->model->find($id))
            return redirect()->route('product.index');

        $product->delete();

        return redirect()->route('product.index');
    }
}
