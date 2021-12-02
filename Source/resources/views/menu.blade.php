@extends('main')

@section('content')
    <div class="bg0 m-t-23 p-b-140 p-t-80">
        <div class="container">
            <div class="flex-w flex-sb-m p-b-52">
                <div class="flex-w flex-l-m filter-tope-group m-tb-10">
                   <h1>{{ $title }}</h1>
                </div>

                <div class="flex-w flex-c-m m-tb-10">
                    <div class="flex-c-m stext-106 cl6 size-104 bor4 pointer hov-btn3 trans-04 m-r-8 m-tb-4 js-show-filter">
                        <i class="icon-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-filter-list"></i>
                        <i class="icon-close-filter cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
                        Lọc
                    </div>

                    <div class="flex-c-m stext-106 cl6 size-105 bor4 pointer hov-btn3 trans-04 m-tb-4 js-show-search">
                        <i class="icon-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-search"></i>
                        <i class="icon-close-search cl2 m-r-6 fs-15 trans-04 zmdi zmdi-close dis-none"></i>
                        Tìm Kiếm
                    </div>
                </div>

                <!-- Search product -->
                
                <div class="dis-none panel-search w-full p-t-10 p-b-15">
                    <form action="" method="">
                    <div class="bor8 dis-flex p-l-15">
                        <button class="size-113 flex-c-m fs-16 cl2 hov-cl1 trans-04">
                            <i class="zmdi zmdi-search"></i>
                        </button>
                        <input class="mtext-107 cl2 size-114 plh2 p-r-15" type="text" name="search" placeholder="Tìm kiếm">
                    </div>
                    </form>
                </div>

                <!-- Filter -->
                <div class="dis-none panel-filter w-full p-t-10">
                    <div class="wrap-filter flex-w bg6 w-full p-lr-40 p-t-27 p-lr-15-sm">
                        <div class="filter-col1 p-r-15 p-b-27">
                            <div class="mtext-102 cl2 p-b-15">
                                Sắp xếp theo
                            </div>

                            <ul>
                                <li class="p-b-6">
                                    <a href="{{ request()->url() }}" class="filter-link stext-106 trans-04">
                                        Mặc định
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <a href="{{ request()->fullUrlWithQuery(['sort' => 'asc']) }}" class="filter-link stext-106 trans-04">
                                        Giá: Thấp đến Cao
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <a href="{{ request()->fullUrlWithQuery(['sort' => 'desc']) }}" class="filter-link stext-106 trans-04">
                                        Giá: Cao đến Thấp
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="filter-col2 p-r-15 p-b-27">
                            <div class="mtext-102 cl2 p-b-15">
                                Giá
                            </div>

                            <ul>
                                <li class="p-b-6">
                                    <a href="{{ request()->url() }}" class="filter-link stext-106 trans-04 filter-link-active">
                                        Tất cả
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <a href="{{ request()->fullUrlWithQuery(['price_start' => '1' , 'price_end' => '500' ]) }}" class="filter-link stext-106 trans-04">
                                        $0.00 - $500.00
                                    </a>
                                </li>

                                <li class="p-b-6">
                                    <a href="{{ request()->fullUrlWithQuery(['price_start' => '500' , 'price_end' => '1000' ]) }}" class="filter-link stext-106 trans-04">
                                        $50.00 - $1000.00
                                    </a>
                                </li>
                                <li class="p-b-6">
                                    <a href="{{ request()->fullUrlWithQuery(['price_start' => '1000' , 'price_end' => '5000' ]) }}" class="filter-link stext-106 trans-04">
                                        $1000.00 - $5000.00
                                    </a>
                                </li>
                            </ul>
                        </div>


                    </div>
                </div>
            </div>

            @include('products.list')
            <div class="flex-c-m flex-w w-full p-t-45" id="button-loadMore">
                <input type="hidden" value="1" id="page">
                <button onclick="loadMore()" class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
                    Hiển thị thêm...
                </button>
            </div>
            {!! $products->links() !!}
        </div>
    </div>
@endsection
