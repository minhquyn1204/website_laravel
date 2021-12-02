@extends('admin.main')

@section('content')
    <table class="table">
        <thead>
            <tr>
                <th style="width: 50px">ID</th>
                <th>Tài khoản</th>
                <th>Email</th>
                <th>Cập nhật lần cuối</th>
                <th style="width: 100px">Sửa/Xóa</th>
            </tr>
        </thead>
        <tbody>
        @foreach($data as $key => $user)
        <tr>
            <td>{{ $user->id }}</td>
            <td>{{ $user->name}}</td>
            <td>{{ $user->email}}</td>
            <td>{{ $user->updated_at}}</td>
            <td> 
                <a class="btn btn-primary btn-sm" 
                    href="/admin/user/edit/{{ $user->id }}">
                    <i class="fas fa-edit"></i>
                </a>
                <a href="#" class="btn btn-danger btn-sm"
                       onclick="removeRow({{ $user->id }}, '/admin/user/destroy')">
                        <i class="fas fa-trash"></i>
                </a>
            </td>
        </tr>
        @endforeach
        </tbody>
    </table>
@endsection


