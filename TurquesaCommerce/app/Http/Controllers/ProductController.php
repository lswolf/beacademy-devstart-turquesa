<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Requests\StoreUpdateProductFormRequest;
use App\Models\Category;

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
    public function show_item($id)
    {
        if (!$product = Product::find($id))
            return redirect()->route('products.index');

        $title = 'e-Book: ' . $product->name;

        return view('product.show_item', compact('product', 'title'));
    }

    public function create()
    {
        return view('product.create');
    }

    public function store(StoreUpdateProductFormRequest $request)
    {
        $data = $request->all();

        if ($request->photo) {
            $file = $request['photo'];
            $path = $file->store('profile', 'public');
            $data['photo'] = $path;
        }


        $this->model->create($data);

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


    public function home()
    {
        $products = Product::paginate(4);


        return view('layouts.home', compact('products'));
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

    public function products_item(Request $request, $idcategory = null)
    {
        $data = [];
        $categories = Category::all();
        $queryproduct = Product::limit(12);

        if ($idcategory != 0) {
            $queryproduct->where("category_id", $idcategory);
        }


        $product = $queryproduct->paginate(12);
        $data['products'] = $product;
        $data['listcategories'] = $categories;
        $data['idcategory'] = $idcategory;
        return view('product.index_item', $data);

    }
}

