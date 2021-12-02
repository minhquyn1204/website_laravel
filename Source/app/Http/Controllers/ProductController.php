<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\Http\Services\Product\ProductService;
use App\Models\Product;
class ProductController extends Controller
{
    protected $productService;

    public function __construct(ProductService $productService, productService $productwiew)
    {
        $this->productService = $productService;
    }

    public function index($id = '', $slug = '')
    {
        $product = $this->productService->show($id);
        $productsMore = $this->productService->more($id);

        return view('products.content', [
            'title' => $product->name,
            'product' => $product,
            'products' => $productsMore,
        ]);
    }
    
}
