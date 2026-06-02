@extends('layouts.admin.edit_app')

@section('content')
<div class="row g-3">

    {{-- ROLE --}}
    <div class="col-lg-4 col-sm-6">
        <label for="role_id" class="form-label require">
            <b>Role <span class="text-danger">*</span></b>
        </label>
        <select class="form-control select" name="role_id" id="role_id" data-placeholder="select Role" required>
            @foreach ($additionalData['roles'] as $role)
                @if (!Auth::user()->hasRole('Software Admin') && $role->name == 'System Admin')
                    @continue
                @endif

                <option value="{{ $role->id }}" {{ $data->hasRole($role->name) ? 'selected' : '' }}>
                    {{ $role->name }}
                </option>
            @endforeach
        </select>
    </div>

    {{-- PANEL --}}
    <div class="col-lg-4 col-sm-6">
        <label for="role_status" class="form-label require">
            <b>Panel <span class="text-danger">*</span></b>
        </label>
        <select class="form-control" name="role_status" id="role_status" required>
            <option value="0" {{ $data->role_status == 0 ? 'selected' : '' }}>Customer</option>
            <option value="1" {{ $data->role_status == 1 ? 'selected' : '' }}>System User</option>
            <option value="2" {{ $data->role_status == 2 ? 'selected' : '' }}>Investor</option>
            <option value="3" {{ $data->role_status == 3 ? 'selected' : '' }}>Merchant</option>
        </select>
    </div>

    {{-- NAME --}}
    <div class="col-lg-4 col-sm-6">
        <label for="name" class="form-label">
            <b>Name <span class="text-danger">*</span></b>
        </label>
        <input type="text" class="form-control" id="name" name="name"
               placeholder="Name"
               value="{{ old('name', $data->name) }}" required>
    </div>

    {{-- USER ID --}}
    <div class="col-lg-4 col-sm-6">
        <label for="user_name" class="form-label">
            <b>User ID <span class="text-danger">*</span></b>
        </label>
        <input type="text" class="form-control" id="user_name" name="user_name"
               placeholder="User ID"
               value="{{ old('user_name', $data->user_name) }}" required>
    </div>

    {{-- EMAIL --}}
    <div class="col-lg-4 col-sm-6">
        <label for="email" class="form-label">
            <b>Email</b>
        </label>
        <input type="email" class="form-control" id="email" name="email"
               placeholder="User Email"
               value="{{ old('email', $data->email) }}">
    </div>

    {{-- PHONE --}}
    <div class="col-lg-4 col-sm-6">
        <label for="phone" class="form-label">
            <b>Phone</b>
        </label>
        <input type="text" class="form-control" id="phone" name="phone"
               placeholder="User Phone"
               value="{{ old('phone', $data->phone) }}">
    </div>

    {{-- IMAGE --}}
    <div class="col-lg-4 col-sm-6">
        <label for="image" class="form-label">
            <b>Image</b>
        </label>
        <input type="file" class="form-control" id="image" name="image" accept="image/*">

        @if (!empty($data->image) && file_exists(public_path($data->image)))
            <img class="mt-2 rounded"
                 src="{{ asset($data->image) }}"
                 height="45"
                 width="45"
                 style="object-fit:cover;"
                 alt="Image">
        @endif
    </div>

    {{-- ADDRESS --}}
    <div class="col-lg-8 col-sm-6">
        <label for="address" class="form-label">
            <b>Address</b>
        </label>
        <input type="text" class="form-control" id="address" name="address"
               placeholder="Address"
               value="{{ old('address', $data->address) }}">
    </div>

    {{-- STUDENT INFORMATION --}}
    <div class="col-12 mt-3">
        <h5 class="border-bottom pb-2">Student Information</h5>
    </div>

    <div class="col-lg-4 col-sm-6">
        <label for="father_name" class="form-label"><b>Father Name</b></label>
        <input type="text" class="form-control" id="father_name" name="father_name"
               placeholder="Father Name"
               value="{{ old('father_name', $data->father_name) }}">
    </div>

    <div class="col-lg-4 col-sm-6">
        <label for="mother_name" class="form-label"><b>Mother Name</b></label>
        <input type="text" class="form-control" id="mother_name" name="mother_name"
               placeholder="Mother Name"
               value="{{ old('mother_name', $data->mother_name) }}">
    </div>

    <div class="col-lg-4 col-sm-6">
        <label for="date_of_birth" class="form-label"><b>Date of Birth</b></label>
        <input type="date" class="form-control" id="date_of_birth" name="date_of_birth"
               value="{{ old('date_of_birth', $data->date_of_birth) }}">
    </div>

    <div class="col-lg-4 col-sm-6">
        <label for="admission_date" class="form-label"><b>Admission Date</b></label>
        <input type="date" class="form-control" id="admission_date" name="admission_date"
               value="{{ old('admission_date', $data->admission_date) }}">
    </div>

    <div class="col-lg-4 col-sm-6">
        <label for="blood_group" class="form-label"><b>Blood Group</b></label>
        <select class="form-control" id="blood_group" name="blood_group">
            <option value="">Select Blood Group</option>
            <option value="A+" {{ old('blood_group', $data->blood_group) == 'A+' ? 'selected' : '' }}>A+</option>
            <option value="A-" {{ old('blood_group', $data->blood_group) == 'A-' ? 'selected' : '' }}>A-</option>
            <option value="B+" {{ old('blood_group', $data->blood_group) == 'B+' ? 'selected' : '' }}>B+</option>
            <option value="B-" {{ old('blood_group', $data->blood_group) == 'B-' ? 'selected' : '' }}>B-</option>
            <option value="O+" {{ old('blood_group', $data->blood_group) == 'O+' ? 'selected' : '' }}>O+</option>
            <option value="O-" {{ old('blood_group', $data->blood_group) == 'O-' ? 'selected' : '' }}>O-</option>
            <option value="AB+" {{ old('blood_group', $data->blood_group) == 'AB+' ? 'selected' : '' }}>AB+</option>
            <option value="AB-" {{ old('blood_group', $data->blood_group) == 'AB-' ? 'selected' : '' }}>AB-</option>
        </select>
    </div>

    <div class="col-lg-4 col-sm-6">
        <label for="group" class="form-label"><b>Group</b></label>
        <select class="form-control" id="group" name="group">
            <option value="">Select Group</option>
            <option value="Science" {{ old('group', $data->group) == 'Science' ? 'selected' : '' }}>Science</option>
            <option value="Business Studies" {{ old('group', $data->group) == 'Business Studies' ? 'selected' : '' }}>Business Studies</option>
            <option value="Humanities" {{ old('group', $data->group) == 'Humanities' ? 'selected' : '' }}>Humanities</option>
        </select>
    </div>

    {{-- ACADEMIC INFORMATION --}}
    <div class="col-12 mt-3">
        <h5 class="border-bottom pb-2">Academic Information</h5>
    </div>
     <div class="col-lg-4 col-sm-6">
        <label for="version" class="form-label"><b>Version</b></label>
        <select class="form-control" id="version" name="version">
            <option value="English" {{ old('version', $data->version) == 'English' ? 'selected' : '' }}>English</option>
            <option value="Bangla" {{ old('version', $data->version) == 'Bangla' ? 'selected' : '' }}>Bangla</option>
           
        </select>
    </div>

    <div class="col-lg-4 col-sm-6">
        <label for="exam_name" class="form-label"><b>Exam Name</b></label>
        <select class="form-control" id="exam_name" name="exam_name">
            <option value="">Select Exam</option>
            <option value="SSC" {{ old('exam_name', $data->exam_name) == 'SSC' ? 'selected' : '' }}>SSC</option>
            <option value="School" {{ old('exam_name', $data->exam_name) == 'School' ? 'selected' : '' }}>School</option>
            <option value="HSC" {{ old('exam_name', $data->exam_name) == 'HSC' ? 'selected' : '' }}>HSC</option>
            <option value="University" {{ old('exam_name', $data->exam_name) == 'University' ? 'selected' : '' }}>University</option>
        </select>
    </div>

    <div class="col-lg-4 col-sm-6">
        <label for="institution" class="form-label"><b>Institution</b></label>
        <input type="text" class="form-control" id="institution" name="institution"
               placeholder="Institution"
               value="{{ old('institution', $data->institution) }}">
    </div>

    <div class="col-lg-4 col-sm-6">
        <label for="board" class="form-label"><b>Board</b></label>
        <input type="text" class="form-control" id="board" name="board"
               placeholder="Board"
               value="{{ old('board', $data->board) }}">
    </div>

    <div class="col-lg-4 col-sm-6">
        <label for="edu_group" class="form-label"><b>Education Group</b></label>
        <input type="text" class="form-control" id="edu_group" name="edu_group"
               placeholder="Education Group"
               value="{{ old('edu_group', $data->edu_group) }}">
    </div>

    <div class="col-lg-4 col-sm-6">
        <label for="year" class="form-label"><b>Year</b></label>
        <input type="text" class="form-control" id="year" name="year"
               placeholder="Year"
               value="{{ old('year', $data->year) }}">
    </div>

    <div class="col-lg-4 col-sm-6">
        <label for="grade" class="form-label"><b>Grade</b></label>
        <input type="text" class="form-control" id="grade" name="grade"
               placeholder="Grade"
               value="{{ old('grade', $data->grade) }}">
    </div>

    <div class="col-lg-4 col-sm-6">
        <label for="gpa_with_4th" class="form-label"><b>GPA With 4th</b></label>
        <input type="text" class="form-control" id="gpa_with_4th" name="gpa_with_4th"
               placeholder="GPA With 4th"
               value="{{ old('gpa_with_4th', $data->gpa_with_4th) }}">
    </div>

    <div class="col-lg-4 col-sm-6">
        <label for="gpa_without_4th" class="form-label"><b>GPA Without 4th</b></label>
        <input type="text" class="form-control" id="gpa_without_4th" name="gpa_without_4th"
               placeholder="GPA Without 4th"
               value="{{ old('gpa_without_4th', $data->gpa_without_4th) }}">
    </div>

    {{-- PAYMENT INFORMATION --}}
    <div class="col-12 mt-3">
        <h5 class="border-bottom pb-2">Payment Information</h5>
    </div>

    <div class="col-lg-4 col-sm-6">
        <label for="payment_method" class="form-label"><b>Payment Method</b></label>
        <select class="form-control" id="payment_method" name="payment_method">
            <option value="">Select Payment Method</option>
            <option value="Bkash" {{ old('payment_method', $data->payment_method) == 'Bkash' ? 'selected' : '' }}>Bkash</option>
            <option value="Rocket" {{ old('payment_method', $data->payment_method) == 'Rocket' ? 'selected' : '' }}>Rocket</option>
            <option value="Nogod" {{ old('payment_method', $data->payment_method) == 'Nogod' ? 'selected' : '' }}>Nogod</option>
            <option value="Cash" {{ old('payment_method', $data->payment_method) == 'Cash' ? 'selected' : '' }}>Cash</option>
        </select>
    </div>

    <div class="col-lg-4 col-sm-6">
        <label for="payment_mobile" class="form-label"><b>Payment Mobile</b></label>
        <input type="text" class="form-control" id="payment_mobile" name="payment_mobile"
               placeholder="Payment Mobile"
               value="{{ old('payment_mobile', $data->payment_mobile) }}">
    </div>

</div>
@endsection