<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use Gloudemans\Shoppingcart\Facades\Cart;

class ProductController extends Controller
{
    public function index()
    {
      
        //dd(Cart::content());

        $products = Product::inRandomOrder()->take(15)->get();
    
        return view('products.index')->with('products', $products);
    }


    public function show($id)
    {
        
        $product = Product::where('id', $id)->firstOrFail();

        return view('products.show')->with('product', $product);
    }

    public function search()
    {
        $query = request()->input('q');

        $search_text = $_GET['query'];
        $products = Product::where('title', 'LIKE', '%'.$search_text.'%')->get();

        return view('products.search');
    }
}
