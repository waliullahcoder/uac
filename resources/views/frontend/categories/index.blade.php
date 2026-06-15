@extends('layouts.frontend.app')

@section('content')

@include('layouts.frontend.partial.menubarMobile')

<section id="Home_Our_courses" class="background-res-free-banner py-5"
    style="background-image: url('{{ asset('images/our-courses.png') }}');">

    <div class="container">

                <div class="row my-4">
                <div class="col-12">
                    <!-- মডার্ন হাইলাইটেড ব্যাকগ্রাউন্ড বক্স -->
                    <div class="title-area text-center p-4 p-md-5 rounded-4 shadow-sm position-relative overflow-hidden" 
                        style="background: linear-gradient(135deg, #f5f7fa 0%, #e4ecf7 100%); border: 1px solid #dee2e6;">
                        
                        <!-- ব্যাকগ্রাউন্ডে হালকা একটি ডেকোরেটিভ গ্লো বা বৃত্ত (ঐচ্ছিক, লুক সুন্দর করার জন্য) -->
                        <div class="position-absolute rounded-circle" style="width: 150px; height: 150px; background: rgba(13, 110, 253, 0.05); top: -50px; right: -30px;"></div>
                        <div class="position-absolute rounded-circle" style="width: 100px; height: 100px; background: rgba(102, 16, 242, 0.05); bottom: -30px; left: -20px;"></div>

                        <!-- ছোট সাব-টাইটেল বা ব্যাজ -->
                        <span class="badge bg-primary bg-opacity-10 text-primary px-3 py-2 rounded-pill text-uppercase fw-bold mb-2" style="font-size: 0.75rem; letter-spacing: 1px;">
                            Category Page
                        </span>

                        <!-- ক্যাটাগরি মেইন টাইটেল -->
                        <h1 class="fw-extrabold text-dark m-0" style="font-size: 2.2rem; font-weight: 800; letter-spacing: -0.5px;">
                            {{$category->name}}
                        </h1>
                        
                        <!-- নিচের ছোট ডিভাইডার লাইন -->
                        <div class="mx-auto mt-3 rounded-pill" style="width: 50px; height: 4px; background-color: #0d6efd;"></div>
                    </div>
                </div>
            </div>
        <!-- Course Section -->
        <div class="all-courses-area">
            <div class="row" id="shorting-data">
               @if($products->count()>0)
               @foreach($products as $product)
                        <div class="col-6 col-lg-3 mt-4">
                            <div class="exam-package-area">
                                <div class="package-exam-image">
                                    <a href="{{route('product.details',$product->id)}}"><img
                                            src="{{asset($product->thumbnail)}}" alt=""
                                            loading="lazy"></a>
                                </div>
                                <div class="package-exam-content mx-2 mx-lg-3">
                                    <div class="package-exam-title pt-3">
                                        <h2>
                                            <a href="#">{{$product->name}}</a>
                                        </h2>
                                    </div>
                                    <div class="row button-and-price pb-3 pb-lg-4">
                                        <div class="col">
                                            <div class="package-exam-rating">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="far fa-star"></i>
                                            </div>



                                            <div class="package-exam-price">

                                                <div class="package-exam-total-price text-muted">
                                                    <s class="text-muted">৳ {{$product->regular_price}}</s>
                                                </div>
                                                <div class="package-exam-discount-price">৳ {{$product->sale_price}}</div>
                                            </div>

                                        </div>
                                        <div class="col text-end">
                                            <div class="package-exam-button">
                                                <div class="package-exam-details">
                                                    <a
                                                        href="{{route('product.details',$product->id)}}">View
                                                        Details </a>
                                                </div>
                                                <a
                                                    href="{{route('auth.signupPage',$product->id)}}">
                                                    <div class="custom-btn btn-12">
                                                        <span>ক্লিক করুন!</span><span>বিস্তারিত</span>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                        @else
                        <div class="col-12">
                            <div class="card border-0 shadow-sm text-center" style="margin-top:0px">
                                <div class="card-body">
                                    <img src="{{ asset('frontend/images/empty-course.png') }}"
                                        alt="No Course"
                                        style="max-width:100%;">

                                    <h3 class="mt-4 fw-bold">
                                        🚀 New Courses Coming Soon!
                                    </h3>

                                    <p class="text-muted mb-4">
                                        এই ক্যাটাগরির কোর্স বর্তমানে প্রস্তুত করা হচ্ছে।
                                        নতুন কোর্স আপলোড হওয়ার সাথে সাথে এখানে প্রদর্শিত হবে।
                                    </p>

                                    <a href="{{ url('/') }}" class="btn btn-outline-primary">
                                        Browse Other Categories
                                    </a>
                                </div>
                            </div>
                        </div>
                        @endif

            </div>

            <br>

        </div>

    </div>

</section>

@endsection