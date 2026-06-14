@extends('layouts.frontend.app')

@section('content')

@include('layouts.frontend.partial.menubarMobile')

<section id="Home_Our_courses" class="background-res-free-banner py-5"
    style="background-image: url('{{ asset('images/our-courses.png') }}');">

    <div class="container">

        <div class="row">
            <div class="title-area text-center">
                <h1 class="fw-bold">{{$category->name}}</h1>
                <br>
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
                                                    href="{{route('auth.signupPage')}}">
                                                    <div class="custom-btn btn-12">
                                                        <span>ক্লিক করুন!</span><span>কোর্সটি কিনুন</span>
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