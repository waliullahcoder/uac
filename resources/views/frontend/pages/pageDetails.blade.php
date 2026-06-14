@extends('layouts.frontend.app')

@section('content')
     <!-- Navigation Bar for Small/Mobile Devices -->

    @include('layouts.frontend.partial.menubarMobile')

<section id="Course_details">
            <div class="container">
                <div class="row g-4 py-5">
                    <div class="col-md-7 col-lg-8">
                        <div class="course-details-title">
                            <h1>{{$product->name}}</h1>
                            <p style="font-size: 24px; font-weight: 700; color: #89181A;">👉 ভর্তি চলছে…</p>
                            <div class="customer-book-rating mb-3">
                            </div>
                        </div>
                        <div class="course-details-video my-4">
                            <div class="ratio ratio-16x9">
                           <img src="{{asset($product->thumbnail)}}" class="w-100 img-fluid" alt="" title="">
                                
                            </div>
                        </div>

                        <div class="course-cart-area course-cart-custom-area">
                            
                              
                              <div class="course-price d-flex justify-content-between">
                                                                        <h4>৳ {{$product->sale_price}} <s>৳ {{$product->regular_price}}</s></h4>



                                                                </div>

                             

                                
                                <div class="left-days">
                                                                            <p><i class="fa-regular fa-clock"></i>
                                            1 day,
                                            4 hours,
                                            28 minutes left at this price!
                                        </p>
                                                                    </div>

                              <div class="course-short-description">
                                  <div class="description-column d-flex justify-content-between">
                                      <p><i class="fa-regular fa-clock"></i> Course Duration</p>
                                      <p>12 Month</p>
                                  </div>
                                  <div class="description-column d-flex justify-content-between">
                                      <p><i class="fa-solid fa-video"></i> Total Lecture</p>
                                      <p>180</p>
                                  </div>




                                  <div class="description-column d-flex justify-content-between">
                                      <p><i class="fa-solid fa-print"></i> Total Exam</p>
                                      <p>160</p>
                                  </div>
                                  <div class="description-column d-flex justify-content-between">
                                      <p><i class="fa-solid fa-person-walking-arrow-right"></i> Live class</p>
                                      <p>180</p>
                                  </div>
                              </div>

                            
                                                        <!-- কুপন সিস্টেম না থাকলে শুধু হিডেন ফিল্ড -->
                                <input type="hidden" name="has_coupon_system" value="0">
                            
                              <div class="course-purchase-button">

                                                                                                                                                                                                          <a href="{{route('auth.signupPage',$product->id)}}" class="default-btn bg-default-color mt-4"><h6>কোর্সটি কিনুন </h6></a>
                                          
                                          <ul class="social-link">
                                          </ul>
                                                                        
                                  


                              </div>
                              <div class="course-includes-area">
                                  <div class="title">
                                      <h5>This Course includes :</h5>
                                  </div>
                                  <p><i class="fa-solid fa-globe"></i> 100% online course</p>
                                  <p><i class="fa-solid fa-tv"></i> Access on mobile , tablet and Computer</p>
                                  <p><i class="fa-solid fa-globe"></i> Provide exclusive recorded class</p>
                                  <p><i class="fa-solid fa-globe"></i> Provide a well-structured lecture sheet in PDF format.</p>

                              </div>
                              <br>
                              <div class="cart-contact">
                                  <h5>কোর্সটি সম্পর্কে বিস্তারিত জানতে কল করুন </h5>
                                  <a href="https://whatsapp.com/channel/0029Vb7sodgEQIamDpMFhT3l"><h4 style="text-align: center"><i class="fa-solid fa-phone"></i> Whatsapp</h4></a>
                              </div>
                          </div>

                        <div class="course-description-area">

                            <div class="course-description-tab-button">
                                <ul class="nav nav-pills nav-fill gap-2 mb-4" id="pills-tab" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link active" id="overview-tab" data-bs-toggle="pill" href="#overview" role="tab" aria-controls="overview" aria-selected="true">Overview</a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link" id="instructor-tab" data-bs-toggle="pill" href="#instructor" role="tab" aria-controls="instructor-class" aria-selected="false">Instructor</a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link" id="routine-tab" data-bs-toggle="pill" href="#routine" role="tab" aria-controls="routine-class" aria-selected="false">Routine</a>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <a class="nav-link" id="review-tab" data-bs-toggle="pill" href="#review" role="tab" aria-controls="review-class" aria-selected="false">Review</a>
                                    </li>
                                </ul>
                            </div>

                            <div class="tab-content" id="pills-tabContent-overview">
                                <div class="tab-pane fade show active" id="overview" role="tabpanel" aria-labelledby="overview-tab">
                                    <div class="overview-area">
                                        <div class="overview-title">
                                             <h4>Description :</h4>

                                        </div>
                                        <br>
                                        <div class="overview-content">
                                           {!! $product->description !!}

                                        </div>
                                        


                                        


                                        <div class="course-instructor-area mb-4">
                                            <div class="instructor-title py-3">
                                                <h4>Course Instructor (0) :</h4>
                                            </div>
                                                                                    </div>

                                        <div class="student-feedback-area mb-4">
                                                                                    </div>

                                        <div class="comment-box-area">
                                            <div class="title py-3">
                                                <h4>Comment</h4>
                                            </div>
                                            <div class="box">
                                                <form action="#" method="GET">
                                                    <input type="hidden" name="_token" value="kMoivc56bh5pXv4ZWIZUuAhOkIE4HHn89a3M1xXM" autocomplete="off">                                                    <input type="hidden" name="type" value="course">
                                                    <input type="hidden" name="parent_model_id" value="1891">
                                                    <input type="hidden" name="name" value="">
                                                    <input type="hidden" name="email" value="">
                                                    <input type="hidden" name="mobile" value="">
                                                    <div class="mb-3">
                                                        <textarea type="text" name="message" class="form-control" id="" rows="4" aria-describedby="emailHelp" placeholder="Write here..." required=""></textarea>
                                                    </div>
                                                    <button type="submit" class="btn_warning">Submit</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-content" id="pills-tabContent-instructor">
                                <div class="tab-pane fade" id="instructor" role="tabpanel" aria-labelledby="instructor-tab">
                                    <div class="overview-area">
                                        <div class="course-instructor-area mb-4">
                                            <div class="instructor-title py-3">
                                                <h4>Course Instructor (0)</h4>
                                            </div>
                                                                                    </div>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-content" id="pills-tabContent-routine">
                                <div class="tab-pane fade" id="routine" role="tabpanel" aria-labelledby="routine-tab">
                                    <div class="overview-area">
                                        <div class="course-routine-area mb-4">
                                            <div class="title py-3">
                                                <h4>Course Routine</h4>
                                            </div>
                                            <div class="course-routine-form">
                                                <table class="table table-borderless">
                                                    <thead>
                                                    <tr>
                                                        <th scope="col">SL</th>
                                                        <th scope="col">Topic</th>
                                                        <th scope="col">Date</th>
                                                        <th scope="col">Day</th>
                                                        <th scope="col">Time</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                                                                                                                                                                                                                                            </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="tab-content" id="pills-tabContent-review">
                                <div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
                                    <div class="overview-area">
                                        <div class="student-feedback-area mb-4">
                                            <div class="feedback-top d-flex justify-content-between py-3">
                                                <div class="title">
                                                    <h4>Students Comment : </h4>
                                                </div>
                                            </div>
                                                                                    </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>

                    <div class="col-md-5 col-lg-4">
                        <div class="course-cart-area">
                            <div class="course-purchase-button">
<a href="{{route('auth.signupPage',$product->id)}}" class="default-btn bg-default-color mt-4"><h6>কোর্সটি কিনুন </h6></a><ul class="social-link"></ul></div>
                            
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