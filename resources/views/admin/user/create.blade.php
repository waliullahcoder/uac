@extends('layouts.admin.create_app')

@section('content')

<div class="row g-3">
{{-- ROLE --}}
<div class="col-lg-4 col-sm-6">
    <label for="role_id" class="form-label">
        <b>Role <span class="text-danger">*</span></b>
    </label>
    <select class="form-select select" name="role_id" id="role_id" required>
        @foreach ($roles as $role)
            @if (!Auth::user()->hasRole('Software Admin') && $role->name == 'System Admin')
                @continue
            @endif

            <option value="{{ $role->id }}">
                {{ $role->name }}
            </option>
        @endforeach
    </select>
</div>

{{-- PANEL --}}
<div class="col-lg-4 col-sm-6">
    <label class="form-label">
        <b>Panel <span class="text-danger">*</span></b>
    </label>
    <select class="form-control" name="role_status" required>
        <option value="0">Customer</option>
        <option value="1">System User</option>
        <option value="2">Investor</option>
        <option value="3">Merchant</option>
    </select>
</div>

{{-- NAME --}}
<div class="col-lg-4 col-sm-6">
    <label class="form-label">
        <b>Name <span class="text-danger">*</span></b>
    </label>
    <input type="text"
           class="form-control"
           name="name"
           value="{{ old('name') }}"
           required>
</div>

{{-- USER ID --}}
<div class="col-lg-4 col-sm-6">
    <label class="form-label">
        <b>User ID <span class="text-danger">*</span></b>
    </label>
    <input type="text"
           class="form-control"
           name="user_name"
           value="{{ old('user_name') }}"
           required>
</div>

{{-- EMAIL --}}
<div class="col-lg-4 col-sm-6">
    <label class="form-label">
        <b>Email</b>
    </label>
    <input type="email"
           class="form-control"
           name="email"
           value="{{ old('email') }}">
</div>

{{-- PHONE --}}
<div class="col-lg-4 col-sm-6">
    <label class="form-label">
        <b>Phone</b>
    </label>
    <input type="text"
           class="form-control"
           name="phone"
           value="{{ old('phone') }}">
</div>

{{-- IMAGE --}}
<div class="col-lg-4 col-sm-6">
    <label class="form-label">
        <b>Image</b>
    </label>
    <input type="file"
           class="form-control"
           name="image"
           accept="image/*">
</div>



{{-- ADDRESS --}}
<div class="col-lg-12">
    <label class="form-label">
        <b>Address</b>
    </label>
    <textarea class="form-control"
              rows="3"
              name="address">{{ old('address') }}</textarea>
</div>

{{-- STUDENT INFORMATION --}}
<div class="col-12 mt-4">
    <h5 class="border-bottom pb-2">Student Information</h5>
</div>

<div class="col-lg-4 col-sm-6">
    <label class="form-label"><b>Father Name</b></label>
    <input type="text" class="form-control" name="father_name"
           value="{{ old('father_name') }}">
</div>

<div class="col-lg-4 col-sm-6">
    <label class="form-label"><b>Mother Name</b></label>
    <input type="text" class="form-control" name="mother_name"
           value="{{ old('mother_name') }}">
</div>

<div class="col-lg-4 col-sm-6">
    <label class="form-label"><b>Date of Birth</b></label>
    <input type="date" class="form-control" name="date_of_birth"
           value="{{ old('date_of_birth') }}">
</div>

<div class="col-lg-4 col-sm-6">
    <label class="form-label"><b>Admission Date</b></label>
    <input type="date"
       class="form-control"
       name="admission_date"
       value="{{ date('Y-m-d') }}">
</div>

<div class="col-lg-4 col-sm-6">
    <label class="form-label"><b>Blood Group</b></label>
    <select class="form-control" name="blood_group">
        <option value="">Select Blood Group</option>
        <option>A+</option>
        <option>A-</option>
        <option>B+</option>
        <option>B-</option>
        <option>O+</option>
        <option>O-</option>
        <option>AB+</option>
        <option>AB-</option>
    </select>
</div>

<div class="col-lg-4 col-sm-6">
    <label class="form-label"><b>Group</b></label>
    <select class="form-control" name="group">
        <option value="">Select Group</option>
        <option value="Science">Science</option>
        <option value="Business Studies">Business Studies</option>
        <option value="Humanities">Humanities</option>
    </select>
</div>

{{-- ACADEMIC INFORMATION --}}
<div class="col-12 mt-4">
    <h5 class="border-bottom pb-2">Academic Information</h5>
</div>
<!-- VERSION -->
                               <div class="col-lg-4 col-sm-6">
                                    <label class="form-label">Version</label>
                                    <select name="version" class="form-select">
                                        <option value="English">English</option>
                                        <option value="Bangla">Bangla</option>
                                    </select>
                                </div>
<div class="col-lg-4 col-sm-6">
    <label class="form-label"><b>Exam Name</b></label>
    <select name="exam_name" class="form-select">
                                        <option>SSC</option>
                                        <option>School</option>
                                        <option>HSC</option>
                                        <option>University</option>
                                    </select>
</div>
  
  
                        <div class="col-lg-4 col-sm-6">
                                    <label class="form-label">Version</label>
                                    <select name="version" class="form-select">
                                        <option value="English">English</option>
                                        <option value="Bangla">Bangla</option>
                                    </select>
                                </div>

<div class="col-lg-4 col-sm-6">
    <label class="form-label"><b>Institution</b></label>
    <input type="text" class="form-control" name="institution"
           value="{{ old('institution') }}">
</div>

<div class="col-lg-4 col-sm-6">
    <label class="form-label"><b>Board</b></label>
    <input type="text" class="form-control" name="board"
           value="{{ old('board') }}">
</div>

<div class="col-lg-4 col-sm-6">
    <label class="form-label"><b>Education Group</b></label>
    <input type="text" class="form-control" name="edu_group"
           value="{{ old('edu_group') }}">
</div>

<div class="col-lg-4 col-sm-6">
    <label class="form-label"><b>Year</b></label>
    <input type="text" class="form-control" name="year"
           value="{{ old('year') }}">
</div>

<div class="col-lg-4 col-sm-6">
    <label class="form-label"><b>Grade</b></label>
    <input type="text" class="form-control" name="grade"
           value="{{ old('grade') }}">
</div>

<div class="col-lg-4 col-sm-6">
    <label class="form-label"><b>GPA With 4th</b></label>
    <input type="text" class="form-control" name="gpa_with_4th"
           value="{{ old('gpa_with_4th') }}">
</div>

<div class="col-lg-4 col-sm-6">
    <label class="form-label"><b>GPA Without 4th</b></label>
    <input type="text" class="form-control" name="gpa_without_4th"
           value="{{ old('gpa_without_4th') }}">
</div>

{{-- PAYMENT INFORMATION --}}
<div class="col-12 mt-4">
    <h5 class="border-bottom pb-2">Payment Information</h5>
</div>

<div class="col-lg-4 col-sm-6">
    <label class="form-label"><b>Payment Method</b></label>
    <select class="form-control" name="payment_method">
        <option value="">Select Method</option>
        <option value="Bkash">Bkash</option>
        <option value="Rocket">Rocket</option>
        <option value="Nogod">Nogod</option>
        <option value="Cash">Cash</option>
    </select>
</div>

<div class="col-lg-4 col-sm-6">
    <label class="form-label"><b>Payment Mobile</b></label>
    <input type="text" class="form-control" name="payment_mobile"
           value="{{ old('payment_mobile') }}">
</div>

</div>

@endsection
