@extends('layouts.frontend.app')

@section('content')

<style>
    .login-section {
        min-height: 80vh;
        background: linear-gradient(135deg, #fff5f5, #ffffff);
        display: flex;
        align-items: center;
    }

    .login-card {
        border: none;
        border-radius: 22px;
        overflow: hidden;
        box-shadow: 0 20px 50px rgba(0,0,0,0.10);
    }

    .login-left {
        background: linear-gradient(135deg, #dd1b1b, #8f0f0f);
        color: #fff;
        padding: 45px 35px;
        height: 100%;
    }

    .login-left h3 {
        font-weight: 800;
        margin-bottom: 15px;
    }

    .login-left p {
        opacity: .9;
        line-height: 1.7;
    }

    .login-icon {
        width: 85px;
        height: 85px;
        border-radius: 50%;
        background: rgba(255,255,255,.15);
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 38px;
        margin-bottom: 25px;
    }

    .login-form-box {
        padding: 45px 35px;
    }

    .login-form-box h4 {
        font-weight: 800;
        color: #222;
    }

    .form-control {
        height: 48px;
        border-radius: 12px;
        border: 1px solid #ddd;
    }

    .form-control:focus {
        border-color: #dd1b1b;
        box-shadow: 0 0 0 .15rem rgba(221,27,27,.15);
    }

    .login-btn {
        height: 48px;
        border-radius: 12px;
        background: #dd1b1b;
        border: none;
        font-weight: 700;
    }

    .login-btn:hover {
        background: #b91414;
    }

    .signup-link {
        color: #1a8961;
        font-weight: 700;
        text-decoration: none;
    }

    .forgot-link {
        color: #dd1b1b;
        text-decoration: none;
        font-weight: 600;
    }

    @media(max-width: 767px) {
        .login-left {
            text-align: center;
            padding: 35px 25px;
        }

        .login-icon {
            margin-left: auto;
            margin-right: auto;
        }

        .login-form-box {
            padding: 35px 25px;
        }
    }
</style>

<section class="login-section py-5">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-9">

                <div class="card login-card">
                    <div class="row g-0">

                        <div class="col-md-5">
                            <div class="login-left">
                                <div class="login-icon">
                                    👨‍🎓
                                </div>

                                <h3>Student Login</h3>
                                <p>
                                    Welcome back! Login with your mobile number and password to access your student account.
                                </p>

                                <div class="mt-4">
                                    <small>New student?</small><br>
                                    <a href="{{ route('auth.signupPage',1) }}" class="btn btn-light btn-sm mt-2 px-4 rounded-pill">
                                        Create Account
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-7">
                            <div class="login-form-box">

                                <h4 class="text-center mb-2">Login to your account</h4>
                                <p class="text-center text-muted mb-4">
                                    Please enter your login details below
                                </p>

                                
                                <form method="POST" action="">
                                    @csrf

                                    <div class="mb-3">
                                        <label class="form-label">
                                            Mobile No. <span class="text-danger">*</span>
                                        </label>
                                        <input type="text"
                                               name="phone"
                                               value="{{ old('phone') }}"
                                               class="form-control @error('phone') is-invalid @enderror"
                                               placeholder="01XXXXXXXXX"
                                               required>

                                        @error('phone')
                                            <span class="text-danger small">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <div class="mb-3">
                                        <label class="form-label">
                                            Password <span class="text-danger">*</span>
                                        </label>
                                        <input type="password"
                                               name="password"
                                               class="form-control @error('password') is-invalid @enderror"
                                               placeholder="Enter your password"
                                               required>

                                        @error('password')
                                            <span class="text-danger small">{{ $message }}</span>
                                        @enderror
                                    </div>

                                    <div class="d-flex justify-content-between align-items-center mb-4">
                                        <div class="form-check">
                                            <input type="checkbox"
                                                   name="remember"
                                                   id="remember"
                                                   class="form-check-input">

                                            <label for="remember" class="form-check-label">
                                                Remember me
                                            </label>
                                        </div>

                                        <a href="{{ route('auth.forgotPasswordPage') }}" class="forgot-link small">
                                            Forgot password?
                                        </a>
                                    </div>

                                    <button type="submit" class="btn btn-danger login-btn w-100">
                                        Login
                                    </button>

                                </form>

                                <p class="text-center mt-4 mb-0">
                                    Don't have an account?
                                    <a href="{{ route('auth.signupPage',1) }}" class="signup-link">
                                        Sign up
                                    </a>
                                </p>

                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

@endsection