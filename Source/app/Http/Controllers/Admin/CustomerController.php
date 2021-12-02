<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Services\Customer\CustomerService;

class CustomerController extends Controller
{
    protected $customer;
    public function __construct(CustomerService $customer)
    {
        $this->customer = $customer;
    }
    public function index(){
        $data = User::all();
        return view('admin.customer.list', [
            'title' => 'Danh Sách Quản Trị Viên',
            'data' => $data,
        ]);
    }
    public function create(){

        return view('admin.customer.add', [
            'title' => 'Thêm Quản Trị Viên',
        ]);
    }

    public function store(Request $request){
        //auth attem là login :v
        $data = new User();

        $data->name = $request->name;
        $data->email = $request->email;
        $data->password =   bcrypt( $request->password);

        if($data->save()){
            // echo 'Done';
            // Session::flash('success', 'Thêm thành công');
            return redirect('/admin/user/list');
        }
        else{
            // echo 'Error';
            // Session::flash('error', 'Có lỗi vui lòng thử lại');
            \Log::info($err->getMessage());
        }
        
    }
    public function show($id){

        $data = User::find($id);
        // dd($data);
        // echo $data->name;
        return view('admin.customer.edit', [
            'title' => 'Sửa Quản Trị Viên',
            'data' => $data,
        ]);
    }
    public function update(Request $request,$id){

        $data = User::find($id);

        $data->name = $request->name;
        $data->email = $request->email;
        $data->password =  bcrypt( $request->password);

        if($data->save()){
            // echo 'Done';
            // Session::flash('success', 'Cập nhật thành công');
            return redirect('/admin/user/list');
        }
        else{
            // Session::flash('error', 'Có lỗi vui lòng thử lại');
            \Log::info($err->getMessage());
        }
    }

    public function destroy(Request $request)
    {
        $result = $this->customer->destroy($request);
        if ($result) {
            return response()->json([
                'error' => false,
                'message' => 'Xóa thành công Quản Trị Viên'
            ]);
        }

        return response()->json([ 'error' => true ]);
    }
}