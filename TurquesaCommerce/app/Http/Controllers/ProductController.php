<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Requests\StoreUpdateProductFormRequest;

class ProductController extends Controller
{
    public function __construct(Product $product)
    {
        $this->model = $product;
    }

    public function index()
    {
        $products = Product::paginate(10);

        return view('product.index', compact('products'));
    }

    public function show($id)
    {
        if (!$product = Product::find($id))
            return redirect()->route('products.index');

        $title = 'e-Book: ' . $product->name;

        return view('product.show', compact('product', 'title'));
    }

    public function create()
    {
        return view('product.create');
    }

    public function store(StoreUpdateProductFormRequest $request)
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

        return redirect()->route('products.index');
    }

    public function edit($id)
    {
        $product = Product::find($id);
        if (!$product = $this->model->find($id)) {
            return redirect()->route('products.index');
        }

        return view('product.edit', compact('product'));
    }

    public function update(StoreUpdateProductFormRequest $request, $id)
    {
        $product = Product::find($id);
        if (!$product = $this->model->find($id))
            return redirect()->route('products.index');

        $data = $request->all();

        $product->update($data);

        return redirect()->route('products.index');
    }

    public function delete($id)
    {
        $product = Product::find($id);
        if (!$product = $this->model->find($id))
            return redirect()->route('products.index');

        $product->delete();

        return redirect()->route('products.index');
    }

    public function search(Request $request)
    {
        $search = request('search');

        $products = Product::where([
            ['name', 'like', '%' . $search . '%']
        ])->get();

        return view('product.search', compact('products'));

    }
}
