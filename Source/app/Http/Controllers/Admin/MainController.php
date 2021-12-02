<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Services\Customer\CustomerService;
use App\Models\User;

class MainController extends Controller
{
    protected $customer;
    public function __construct(CustomerService $customer)
    {
        $this->customer = $customer;
    }
    public function index()
    {
        // $user = User::all();
        return view('admin.home', [
           'title' => 'Trang Quản Trị Admin',
        //    'user'=> $user,
        ]);
    }
}
