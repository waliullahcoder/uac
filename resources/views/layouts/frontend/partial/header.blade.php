
    <header id="Header">
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container">
                <div class="mobile-menu d-flex justify-content-between align-items-center">
                    <div class="main-logo">
                        <a href="{{url('/')}}"><img src="{{ asset(file_exists($settings->logo) ? $settings->logo : 'frontend/images/logo/favicon.png') }}" alt="Logo"
                                srcset=""></a>
                    </div>

                    <div class="moblie-icon">
                        <div class="nav-item login-button">
                           <a href="{{route('auth.signupPage')}}" type="button" class="btn btn_warning">Admission</a>
                        </div>
                        <div>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                        </div>
                    </div>
                </div>

              @include('layouts.frontend.partial.menubar')
            </div>
        </nav>
    </header>
