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
                                 <div class="col-md-6">
                                    <select name="group" class="form-select">
                                        <option value="N/A">Select Group</option>
                                        <option value="Science">Science</option>
                                        <option value="Business Studies">Business Studies</option>
                                        <option value="Humanities">Humanities</option>
                                    </select>
                                </div>

                                <div class="col-md-6">
                                    <input type="text" name="name" class="form-control" placeholder="Student's Name">
                                </div>

                                <div class="col-md-6">
                                    <input type="text" name="mother_name" class="form-control" placeholder="Mother's Name">
                                </div>

                                <div class="col-md-6">
                                    <input type="text" name="father_name" class="form-control" placeholder="Father's Name">
                                </div>

                                <div class="col-md-6">
                                    <input type="text" name="phone" class="form-control" placeholder="Whatsapp Number">
                                </div>
                                 <div class="col-md-6">
                                    <input type="email" name="email" class="form-control" placeholder="Email">
                                </div>

                                <div class="col-md-6">
                                    <input type="text" name="contact_number" class="form-control" placeholder="Extra Number">
                                </div>

                                <div class="col-md-6">
                                    <textarea name="address" class="form-control" rows="1" placeholder="Address"></textarea>
                                </div>

                            </div>

                          

                            <!-- EDUCATION -->
                            <hr class="my-4">
                            <div class="row g-3">

                                <div class="col-md-4">
                                    <select name="exam_name" class="form-select">
                                        <option>Exam Name</option>
                                        <option>SSC</option>
                                        <option>School</option>
                                        <option>HSC</option>
                                        <option>University</option>
                                    </select>
                                </div>

                                <div class="col-md-8">
                                    <input type="text" name="institution" class="form-control" placeholder="Institution's Name">
                                </div>
                                <div class="col-md-4">
                                    <input type="text" name="year" class="form-control" placeholder="Year">
                                </div>


                                <div class="col-md-8">
                                    <input type="text" name="board" class="form-control" placeholder="Board">
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