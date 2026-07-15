@extends('layouts.frontend.app')

@section('content')
<style>
    .form-control,.form-select{
        border-radius:1px;
    }
</style>
<section id="RegistrationForm" class="py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">

                <div class="card shadow-lg border-0 rounded-4">

                    <div class="card-header text-white text-center py-3" style="background:#dd1b1b;">
                @if(Auth::check())
                 <h4 class="mb-0">Welcome {{ Auth::user()->name }} !! Please confirm for admission/order</h4>
                
                @else
                      <h4 class="mb-0">Student Registration Form</h4>
                @endif
                      
                    </div>

                    <div class="card-body p-4">

                        <form action="{{ route('user.signupPost') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <input type="hidden" name="product_id" value="{{ $id }}">
                                @php
                                    $product = App\Models\Product::find($id);
                                @endphp

                             @if(Auth::check())
                              
                                <div class="card shadow sticky-top" style="top:20px">
                                        <div class="card-header bg-dark text-white">
                                            <h5 class="mb-0">
                                                <i class="fa fa-cart-shopping me-2"></i>
                                                Summary
                                            </h5>
                                        </div>

                                        <div class="card-body">
                                        
                                        <div class="d-flex justify-content-between mb-2">
                                                <img id="preview" 
                                                src="{{asset($product->thumbnail)}}"
                                                class="img-thumbnail"
                                                style="max-width:100%;height:auto;object-fit:cover;">
                                            </div>
                                            <div class="d-flex justify-content-between mb-2">
                                                <span>Course/Guide/Book</span>
                                                <strong> {{$product->name}}</strong>
                                            </div>
                                            <div class="d-flex justify-content-between mb-2">
                                                <span>Date *</span>
                                                <strong> <input type="text" name="admission_date" class="form-control" value="{{ date('d-m-Y') }}" readonly></strong>
                                            </div>
                                            <div class="d-flex justify-content-between mb-2">
                                                <span>Price</span>
                                                <strong> ৳ {{ number_format($product->regular_price,2) }}</strong>
                                            </div>
                                            <div class="d-flex justify-content-between mb-2">
                                                <span>Discount</span>
                                                <strong> ৳ {{ number_format($product->discount,2) }}</strong>
                                            </div>

                                            
                                            <hr>

                                            <div class="d-flex justify-content-between fs-5">
                                                <strong>Total</strong>
                                                <strong class="text-primary">
                                                    ৳ {{ number_format($product->sale_price,2) }}
                                                </strong>
                                            </div>

                                            <hr>
                                          <input type="hidden"
                                    name="user_id"
                                    value="{{ Auth::user()->id }}">

                                <input type="hidden"
                                    name="product_id"
                                    value="{{ $product->id }}">

                                <input type="hidden"
                                    name="amount"
                                    value="{{ $product->sale_price }}">
   
                                    <input type="hidden" name="group" value="sales">
                                            <button type="submit" class="btn btn-primary w-100 rounded-pill py-3">
                                                <i class="fa fa-lock me-2"></i>
                                                Confirm
                                            </button>

                                        </div>
                                    </div>


                               
                               
                             @else
  @if($cat_id==470)
  <div class="card shadow sticky-top" style="top:20px">
    <div class="card-header bg-dark text-white">
        <h5 class="mb-0">
            <i class="fa fa-cart-shopping me-2"></i>
            Order Summary
        </h5>
    </div>

    <div class="card-body">
    
      <div class="d-flex justify-content-between mb-2">
            <img id="preview" 
            src="{{asset($product->thumbnail)}}"
            class="img-thumbnail"
             style="max-width:100%;height:auto;object-fit:cover;">
        </div>
        <div class="d-flex justify-content-between mb-2">
            <span>Course/Guide/Book</span>
            <strong> {{$product->name}}</strong>
        </div>
        <div class="d-flex justify-content-between mb-2">
            <span>Order Date *</span>
            <strong> <input type="text" name="admission_date" class="form-control" value="{{ date('d-m-Y') }}" readonly></strong>
        </div>
        <div class="d-flex justify-content-between mb-2">
            <span>Sale Price</span>
            <strong> ৳ {{ number_format($product->sale_price,2) }}</strong>
        </div>

        <div class="d-flex justify-content-between mb-2">
            <span>Name *</span>
            <strong><input type="text" name="name" class="form-control" placeholder="Student's Name" value="{{ old('name') }}" required></strong>
        </div>

        <div class="d-flex justify-content-between mb-2">
            <span>Phone *</span>
            <strong>
<input type="text" name="user_name" class="form-control" placeholder="Student's phone" value="{{ old('phone') }}" required></strong>
        </div>

        <div class="d-flex justify-content-between mb-2">
            <span>Whatsapp Number *</span>
            <strong>
<input type="text" name="phone" class="form-control" placeholder="Whatsapp Number" value="{{ old('phone') }}" required></strong>
        </div>
        <hr>


        <div class="d-flex justify-content-between text-success">
            <span>Address *</span>
            <strong>
<input type="text" name="address" class="form-control" placeholder="Student's address" value="{{ old('address') }}" required></strong>
        </div>

        <hr>

        <div class="d-flex justify-content-between fs-5">
            <strong>Total</strong>
            <strong class="text-primary">
                ৳ {{ number_format($product->sale_price,2) }}
            </strong>
        </div>

        <hr>
        
<input type="hidden" name="group" value="sales">
        <button type="submit" class="btn btn-primary w-100 rounded-pill py-3">
            <i class="fa fa-lock me-2"></i>
            Confirm
        </button>

    </div>
</div>


@else
                            <!-- BASIC INFO -->
                            <div class="row g-3">

                                <div class="col-md-6">
                                    <label class="form-label btn btn_warning">Admission Date</label>
                                    <input type="text" name="admission_date" class="form-control"
                                        value="{{ date('d-m-Y') }}" readonly>
                                </div>

                                <!-- VERSION -->
                                <div class="col-md-6">
                                    <label class="form-label btn btn_warning">Version</label>
                                    <select name="version" class="form-select">
                                        <option value="English" {{ old('version') == 'English' ? 'selected' : '' }}>English</option>
                                        <option value="Bangla" {{ old('version') == 'Bangla' ? 'selected' : '' }}>Bangla</option>
                                    </select>
                                </div>

                                <div class="col-md-6">
                                    <select name="group" class="form-select">
                                        <option value="N/A" {{ old('group', 'N/A') == 'N/A' ? 'selected' : '' }}>Select Group</option>
                                        <option value="Science" {{ old('group') == 'Science' ? 'selected' : '' }}>Science</option>
                                        <option value="Business Studies" {{ old('group') == 'Business Studies' ? 'selected' : '' }}>Business Studies</option>
                                        <option value="Humanities" {{ old('group') == 'Humanities' ? 'selected' : '' }}>Humanities</option>
                                    </select>
                                </div>

                                <div class="col-md-6">
                                    <input type="text" name="name" class="form-control"
                                        placeholder="Student's Name" value="{{ old('name') }}">
                                </div>

                                <div class="col-md-6">
                                    <input type="text" name="mother_name" class="form-control"
                                        placeholder="Mother's Name" value="{{ old('mother_name') }}">
                                </div>

                                <div class="col-md-6">
                                    <input type="text" name="father_name" class="form-control"
                                        placeholder="Father's Name" value="{{ old('father_name') }}">
                                </div>

                                <div class="col-md-6">
                                    <input type="text" name="phone" class="form-control"
                                        placeholder="Whatsapp Number" value="{{ old('phone') }}">
                                </div>

                                <div class="col-md-6">
                                    <input type="email" name="email" class="form-control"
                                        placeholder="Email" value="{{ old('email') }}">
                                </div>

                                <div class="col-md-6">
                                    <input type="text" name="contact_number" class="form-control"
                                        placeholder="Extra Number" value="{{ old('contact_number') }}">
                                </div>

                                <div class="col-md-6">
                                    <textarea name="address" class="form-control" rows="1"
                                            placeholder="Address">{{ old('address') }}</textarea>
                                </div>

                            </div>

                            <!-- EDUCATION -->
                            <hr class="my-4">
                           <div class="row g-3">
                            <div class="col-md-4">
                                <select name="exam_name" id="exam_name" class="form-select">
                                    <option value="" {{ old('exam_name') == '' ? 'selected' : '' }}>Exam Name</option>
                                    <option value="SSC" {{ old('exam_name') == 'SSC' ? 'selected' : '' }}>SSC</option>
                                    <option value="School" {{ old('exam_name') == 'School' ? 'selected' : '' }}>School</option>
                                    <option value="HSC" {{ old('exam_name') == 'HSC' ? 'selected' : '' }}>HSC</option>
                                    <option value="University" {{ old('exam_name') == 'University' ? 'selected' : '' }}>University</option>
                                </select>
                            </div>

                            <div class="col-md-8">
                                <input type="text" name="institution" class="form-control" placeholder="Institution's Name" value="{{ old('institution') }}">
                            </div>

                            <div class="col-md-4">
                                <input type="text" name="year" class="form-control" placeholder="Year" value="{{ old('year') }}">
                            </div>

                            <div class="col-md-8">
                                <input type="text" name="board" id="board_input" class="form-control"
                                    placeholder="Class Name for School / Board Name for SSC/HSC" value="{{ old('board') }}">
                            </div>
                        </div>

                        <script>
                            document.addEventListener("DOMContentLoaded", function () {
                                const examSelect = document.getElementById('exam_name');
                                const boardInput = document.getElementById('board_input');

                                // প্লেসহোল্ডার চেঞ্জ করার ফাংশন
                                function updatePlaceholder() {
                                    if (examSelect.value === 'School') {
                                        boardInput.placeholder = 'Class Name';
                                    } else if (examSelect.value === 'University') {
                                        boardInput.placeholder = 'Department / Subject'; // ইউনিভার্সিটি সিলেক্ট করলে যা দেখাতে চান
                                    } else {
                                        // ডিফল্ট প্লেসহোল্ডার
                                        boardInput.placeholder = 'Board';
                                    }
                                }

                                // পেজ লোড হওয়ার সাথে সাথে একবার চেক করবে (যদি ওল্ড ডাটা থাকে)
                                updatePlaceholder();

                                // ড্রপডাউন পরিবর্তন হলে প্লেসহোল্ডার চেঞ্জ হবে
                                examSelect.addEventListener('change', updatePlaceholder);
                            });
                        </script>

                            <!-- IMAGE UPLOAD -->
                            <hr class="my-4">
                            <h5 class="text-primary">Profile Photo</h5>

                            <div class="row">
                                <div class="col-md-4">
                                    <input type="file" name="profile_photo"
                                        class="form-control"
                                        accept="image/*"
                                        onchange="previewImage(event)">
                                </div>
                                <div class="col-md-4 text-center">
                                    <img id="preview"
                                        src="https://via.placeholder.com/150"
                                        class="img-thumbnail"
                                        style="width:150px;height:150px;object-fit:cover;">
                                </div>
                                <div class="col-md-4">
                                <input type="text" name="amount" class="form-control" placeholder="Amount (Special Discount)" value="{{ old('amount') }}">
                                </div> 

                                
                            </div>
@endif
                          
                            <!-- SUBMIT -->
                            <div class="d-flex justify-content-between align-items-center mt-4">
                                 @if(Auth::check())
                                 @else
                                <a href="{{ route('auth.signinPage') }}" class="text-decoration-none">
                                    Already have an account? <strong>Sign In</strong>
                                </a>
                                @endif
                                <button type="submit" class="btn btn-success px-4">
                                    Submit Form
                                </button>
                            </div>
                            @endif
                        </form>

                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<!-- IMAGE PREVIEW SCRIPT -->
<script>
function previewImage(event) {
    const reader = new FileReader();
    reader.onload = function(){
        document.getElementById('preview').src = reader.result;
    }
    reader.readAsDataURL(event.target.files[0]);
}
</script>

@endsection