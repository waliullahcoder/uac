@extends('layouts.frontend.app')

@section('content')
     <!-- Navigation Bar for Small/Mobile Devices -->

    @include('layouts.frontend.partial.menubarMobile')

<section id="Course_details">
            <div class="container">
                <div class="row g-4 py-5">
                    <div class="col-md-7 col-lg-8">
                        <div class="course-description-tab-button" style="background:#d7ff08;padding:5px; text-align:center;border-radius:5px;">
                            <h1>{{$product->name}}</h1>
                        </div>
                        <div class="course-details-video">
                            <div class="ratio ratio-16x9" style="top:5px;">
                           <img src="{{asset($product->thumbnail)}}" class="w-100 img-fluid" alt="" title="">
                                
                            </div>
                        </div>

                       

                        <div class="course-description-area">

                            <div class="tab-content" id="pills-tabContent-overview">
                                <div class="tab-pane fade show active" id="overview" role="tabpanel" aria-labelledby="overview-tab">
                                    <div class="overview-area">
                                        <div class="overview-content">
                                           {!! $product->description !!}

                                        </div>
                                    </div>
                                </div>
                            </div>

                          

                        </div>

                    </div>

                    <div class="col-md-5 col-lg-4">
                        <div class="course-cart-area">
                            <div class="course-purchase-button">
<a href="{{route('auth.signupPage',$product->id)}}" class="default-btn bg-default-color mt-4"><h6>বিস্তারিত </h6></a><ul class="social-link"></ul></div>
                            
                            <div class="course-price d-flex justify-content-between">
                                                                   <h4>৳ {{$product->sale_price}} <s>৳ {{$product->regular_price}}</s></h4>



                                                            </div>

                          


                            <div class="course-short-description">
                                {!! $product->short_description !!}
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
@endsection