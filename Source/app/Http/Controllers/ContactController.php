<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\Menu\MenuService;
use App\Http\Services\Product\ProductService;

class ContactController extends Controller
{

    protected $menu;
    protected $product;
    public function __construct(MenuService $menu,ProductService $product)
    {
        $this->menu = $menu;
        $this->product = $product;
    }
    public function index(){

        return view('contact.wiew', [
            'title' => 'Liên hệ',
            'menus' => $this->menu->show(),
            'products' => $this->product->get(),
        ]);
    }
    
}
