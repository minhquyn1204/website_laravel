@extends('admin.main')

@section('head')
    <script src="/ckeditor/ckeditor.js"></script>
@endsection

@section('content')
    <form action="" method="POST">
        <div class="card-body">

            <div class="form-group">
                <label for="customer">Tài khoản</label>
                <input type="text" name="name" class="form-control" value="{{ $data->name }}"  placeholder="Nhập Username">
            </div>
            <div class="form-group">
                <label for="customer">Mật Khẩu</label>
                <input type="password" name="password" class="form-control" value="{{ $data->password }}" placeholder="Nhập Password">
            </div>
            <div class="form-group">
                <label for="customer">Email</label>
                <input type="email" name="email" class="form-control" value="{{ $data->email }}" placeholder="Nhập Email">
            </div>

        </div>

        <div class="card-footer">
            <button type="submit" class="btn btn-primary">Sửa User</button>
        </div>
        @csrf
    </form>
@endsection

@section('footer')
    <script>
        CKEDITOR.replace('content');
    </script>
@endsection
