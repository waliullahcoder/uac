@extends('layouts.frontend.app')

@section('content')

<div class="container py-5">
    <div class="row">

    {{-- SIDEBAR --}}
    @include('frontend.user.userSideBar')

    {{-- MAIN CONTENT --}}
    <div class="col-lg-9">

        <div class="card shadow-sm">
            <div class="card-body">

                <h4 class="mb-4 text-center">Update Profile</h4>

                <form action="{{ route('user.profile.update') }}"
                      method="POST"
                      enctype="multipart/form-data">
                    @csrf

                    <div class="row g-4">

                        {{-- PROFILE IMAGE --}}
                        <div class="col-md-3 text-center">

                            <img
                                src="{{ auth()->user()->image
                                    ? asset(auth()->user()->image)
                                    : asset('frontend/images/user/user.png') }}"
                                class="rounded-circle mb-3 border"
                                width="150"
                                height="150"
                                style="object-fit:cover">

                            <div class="mb-2">
                                <input type="file"
                                       name="image"
                                       class="form-control">
                            </div>

                            <small class="text-muted">
                                JPG / PNG (Max 2MB)
                            </small>

                        </div>

                        {{-- PROFILE FORM --}}
                        <div class="col-md-9">

                            <div class="row">

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Name</label>
                                    <input type="text"
                                           name="name"
                                           value="{{ old('name', auth()->user()->name) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Phone</label>
                                    <input type="text"
                                           name="phone"
                                           value="{{ old('phone', auth()->user()->phone) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Email</label>
                                    <input type="email"
                                           name="email"
                                           value="{{ old('email', auth()->user()->email) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Blood Group</label>
                                    <input type="text"
                                           name="blood_group"
                                           value="{{ old('blood_group', auth()->user()->blood_group) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Father Name</label>
                                    <input type="text"
                                           name="father_name"
                                           value="{{ old('father_name', auth()->user()->father_name) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Mother Name</label>
                                    <input type="text"
                                           name="mother_name"
                                           value="{{ old('mother_name', auth()->user()->mother_name) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Date of Birth</label>
                                    <input type="date"
                                           name="date_of_birth"
                                           value="{{ old('date_of_birth', auth()->user()->date_of_birth) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Admission Date</label>
                                    <input type="date"
                                           name="admission_date"
                                           value="{{ old('admission_date', auth()->user()->admission_date) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Group</label>
                                    <input type="text"
                                           name="group"
                                           value="{{ old('group', auth()->user()->group) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Exam Name</label>
                                     <select class="form-control" id="exam_name" name="exam_name">
            <option value="">Select Exam</option>
            <option value="SSC" {{ old('exam_name', auth()->user()->exam_name) == 'SSC' ? 'selected' : '' }}>SSC</option>
            <option value="School" {{ old('exam_name', auth()->user()->exam_name) == 'School' ? 'selected' : '' }}>School</option>
            <option value="HSC" {{ old('exam_name', auth()->user()->exam_name) == 'HSC' ? 'selected' : '' }}>HSC</option>
            <option value="University" {{ old('exam_name', auth()->user()->exam_name) == 'University' ? 'selected' : '' }}>University</option>
        </select>
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Institution</label>
                                    <input type="text"
                                           name="institution"
                                           value="{{ old('institution', auth()->user()->institution) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Board</label>
                                    <input type="text"
                                           name="board"
                                           value="{{ old('board', auth()->user()->board) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Education Group</label>
                                    <input type="text"
                                           name="edu_group"
                                           value="{{ old('edu_group', auth()->user()->edu_group) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Passing Year</label>
                                    <input type="text"
                                           name="year"
                                           value="{{ old('year', auth()->user()->year) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Grade</label>
                                    <input type="text"
                                           name="grade"
                                           value="{{ old('grade', auth()->user()->grade) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">GPA With 4th Subject</label>
                                    <input type="text"
                                           name="gpa_with_4th"
                                           value="{{ old('gpa_with_4th', auth()->user()->gpa_with_4th) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">GPA Without 4th Subject</label>
                                    <input type="text"
                                           name="gpa_without_4th"
                                           value="{{ old('gpa_without_4th', auth()->user()->gpa_without_4th) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Payment Method</label>
                                    <input type="text"
                                           name="payment_method"
                                           value="{{ old('payment_method', auth()->user()->payment_method) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Payment Mobile</label>
                                    <input type="text"
                                           name="payment_mobile"
                                           value="{{ old('payment_mobile', auth()->user()->payment_mobile) }}"
                                           class="form-control">
                                </div>

                                <div class="col-md-12 mb-3">
                                    <label class="form-label">Address</label>
                                    <textarea name="address"
                                              rows="3"
                                              class="form-control">{{ old('address', auth()->user()->address) }}</textarea>
                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="text-end mt-4">
                        <button type="submit" class="btn btn-primary px-5">
                            Update Profile
                        </button>
                    </div>

                </form>

            </div>
        </div>

    </div>

</div>

</div>
@endsection
