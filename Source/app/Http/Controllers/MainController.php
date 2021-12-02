<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\Slider\SliderService;
use App\Http\Services\Menu\MenuService;
use App\Http\Services\Product\ProductService;
use App\Models\Product;
use App\Models\Cart;
class MainController extends Controller
{
    protected $slider;
    protected $allmenus;
    protected $product;

    public function __construct(SliderService $slider, MenuService $menu,
        ProductService $product )
    {
        $this->slider = $slider;
        $this->menu = $menu;
        $this->product = $product;

    }

    // public function index(Request $request)
    // {
    //     $keyword = $request->search;
    //     $search = $this->product->search($keyword);
    //     return view('home', [
    //         'title' => 'COZA STORE',
    //         'sliders' => $this->slider->show(),
    //         'menus' => $this->menu->show(),
    //         'products' => $this->product->get(),
    //         'search' => $this->product->search($keyword),
    //     ]);
    // }
    public function index()
    {   
        if(isset($_GET['search'])){
            $keyword = $_GET['search'];
            $search = $this->product->search($keyword);
            
            return view('home', [
                'title' => 'Tìm Kiếm Sản Phẩm',
                'sliders' => $this->slider->show(),
                'menus' => $this->menu->show(),
                'products' => $this->product->get(),
                'search' => $search,
            ]);
        }

        return view('home', [
            'title' => 'COZA STORE',
            'sliders' => $this->slider->show(),
            'menus' => $this->menu->show(),
            'products' => $this->product->get(),
        ]);
    }

    public function loadProduct(Request $request)
    {
        $page = $request->input('page', 0);
        $result = $this->product->get($page);
        if (count($result) != 0) {
            $html = view('products.list', ['products' => $result ])->render();

            return response()->json([ 'html' => $html ]);
        }

        return response()->json(['html' => '' ]);
    }
    // public function search($request){
    //     $keyword = $request->search;

    //     return $this->product->search($keyword);
    // }
    // public function search(Request $request){
    //     $keyword = $request->search;

    //     $search = $this->product->search($keyword);
    //     return view('products.search', [
    //         'title' => 'Tìm kiếm sản phẩm',
    //         'search' => $search,
    //     ]);
    // }
}
