@extends('layouts.frontend.app')

@section('content')

<section id="RegistrationForm" class="py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">

                <div class="card shadow-lg border-0 rounded-4">

                    <div class="card-header text-white text-center py-3" style="background:#dd1b1b;">
                        <h4 class="mb-0">Student Registration Form</h4>
                    </div>

                    <div class="card-body p-4">

                        <form action="{{ route('user.signupPost') }}" method="POST" enctype="multipart/form-data">
                            @csrf

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
                                        <option value="English">English</option>
                                        <option value="Bangla">Bangla</option>
                                    </select>
                                </div>

                                <div class="col-md-12">
                                    <label class="form-label">Full Name</label>
                                    <input type="text" name="name" class="form-control">
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label">Mother's Name</label>
                                    <input type="text" name="mother_name" class="form-control">
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label">Father's Name</label>
                                    <input type="text" name="father_name" class="form-control">
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label">Phone (Login ID)</label>
                                    <input type="text" name="phone" class="form-control">
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label">Date of Birth</label>
                                    <input type="date" name="date_of_birth" class="form-control">
                                </div>

                                

                                <!-- BLOOD -->
                                <div class="col-md-4" style="display:none">
                                    <label class="form-label">Blood Group</label>
                                    <select name="blood_group" class="form-select">
                                        <option>A+</option><option>A-</option>
                                        <option>B+</option><option>B-</option>
                                        <option>O+</option><option>O-</option>
                                        <option>AB+</option><option>AB-</option>
                                    </select>
                                </div>

                            </div>

                            <!-- GROUP -->
                            <hr class="my-4">
                            <h5 class="text-primary">Group Selection</h5>

                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="group" value="Science">
                                <label class="form-check-label">Science</label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="group" value="Business Studies">
                                <label class="form-check-label">Business Studies</label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="group" value="Humanities">
                                <label class="form-check-label">Humanities</label>
                            </div>

                            <!-- EDUCATION -->
                            <hr class="my-4">
                            <h5 class="text-primary">Educational Information</h5>

                            <div class="row g-3">

                                <div class="col-md-4">
                                    <label>Exam Name</label>
                                    <select name="exam_name" class="form-select">
                                        <option>SSC</option>
                                        <option>School</option>
                                        <option>HSC</option>
                                        <option>University</option>
                                    </select>
                                </div>

                                <div class="col-md-8">
                                    <label>Institution</label>
                                    <input type="text" name="institution" class="form-control">
                                </div>
                                <div class="col-md-4">
                                    <label>Year</label>
                                    <input type="text" name="year" class="form-control">
                                </div>


                                <div class="col-md-8">
                                    <label>Board</label>
                                    <input type="text" name="board" class="form-control">
                                </div>

                                
                                <div class="col-md-4" style="display:none">
                                    <label>Grade</label>
                                    <input type="text" name="grade" class="form-control">
                                </div>

                                <div class="col-md-4" style="display:none">
                                    <label>GPA (With 4th)</label>
                                    <input type="text" name="gpa_with_4th" class="form-control">
                                </div>

                                <div class="col-md-4" style="display:none">
                                    <label>GPA (Without 4th)</label>
                                    <input type="text" name="gpa_without_4th" class="form-control">
                                </div>

                            </div>

                            <!-- ADDRESS -->
                            <hr class="my-4">
                            <h5 class="text-primary">Address</h5>

                            <textarea name="address" class="form-control" rows="3"></textarea>

                            <!-- CONTACT -->
                            <hr class="my-4">
                            <h5 class="text-primary">Contact Information</h5>

                            <div class="row g-3">

                                <div class="col-md-6">
                                    <label>Email</label>
                                    <input type="email" name="email" class="form-control">
                                </div>

                                <div class="col-md-6">
                                    <label>Contact Number</label>
                                    <input type="text" name="contact_number" class="form-control">
                                </div>

                            </div>

                            <!-- IMAGE UPLOAD -->
                            <hr class="my-4">
                            <h5 class="text-primary">Profile Photo</h5>

                            <div class="row">
                                <div class="col-md-6">
                                    <input type="file" name="profile_photo"
                                           class="form-control"
                                           accept="image/*"
                                           onchange="previewImage(event)">
                                </div>

                                <div class="col-md-6 text-center">
                                    <img id="preview"
                                         src="https://via.placeholder.com/150"
                                         class="img-thumbnail"
                                         style="width:150px;height:150px;object-fit:cover;">
                                </div>
                            </div>

                            <!-- PAYMENT -->
                            <hr class="my-4">
                            <h5 class="text-primary">Payment Method</h5>

                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="payment_method" value="Bkash">
                                <label>Bkash</label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="payment_method" value="Rocket">
                                <label>Rocket</label>
                            </div>

                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="payment_method" value="Nogod">
                                <label>Nogod</label>
                            </div>

                            <div class="mt-3">
                                <label>Payment Mobile Number</label>
                                <input type="text" name="payment_mobile" class="form-control">
                            </div>

                            <!-- SUBMIT -->
                            <div class="d-flex justify-content-between align-items-center mt-4">
                                <a href="{{ route('auth.signinPage') }}" class="text-decoration-none">
                                    Already have an account? <strong>Sign In</strong>
                                </a>
                                <button type="submit" class="btn btn-success px-4">
                                    Submit Form
                                </button>
                            </div>

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