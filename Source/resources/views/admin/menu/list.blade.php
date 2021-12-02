@extends('admin.main')

@section('content')
    <table class="table">
        <thead>
            <tr>
                <th style="width: 50px">ID</th>
                <th>Tên danh mục</th>
                <th>Trạng thái</th>
                <th>Cập nhật lần cuối</th>
                <th>Mô tả</th>
                <th style="width: 100px">Sửa/Xóa</th>
            </tr>
        </thead>
        <tbody>
            {!! \App\Helpers\Helper::menu($menus) !!}
        </tbody>
    </table>
@endsection


