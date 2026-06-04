    
    <!-- Desktop Menu -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <div class="search_button">
                            <form class="search_button_area" action="#/search-content-home"
                                method="POST">
                                <input type="hidden" name="_token" value="gosWeCPYaVCUOdtJpqBI80HwuKQfD8cJChVUMcuu"
                                    autocomplete="off">
                                <div class="input-group">
                                    <span class="input-group-text border-0">
                                        <button class="" type="submit">
                                            <i class="fa-solid fa-magnifying-glass"></i>
                                        </button>
                                    </span>
                                    <input type="text" class="form-control border-0 shadow-none"
                                        placeholder="Search courses" name="search">
                                </div>
                            </form>
                        </div>
                        <li class="nav-item">
                            <a class="nav-link active" href="{{route('auth.signupPage')}}">Home</a>
                        </li>

                        <!-- School Admission -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="{{route('auth.signupPage')}}" id="schoolDropdown" role="button"
                                data-bs-toggle="dropdown">
                                School Admission
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="schoolDropdown">
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-graduation-cap"></i> Class 1-5</a></li>
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-graduation-cap"></i> Class 6</a></li>
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-graduation-cap"></i> Class 7</a></li>
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-graduation-cap"></i> Class 8</a></li>
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-graduation-cap"></i> Class 9</a></li>
                            </ul>
                        </li>

                        <!-- College Admission -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="{{route('auth.signupPage')}}" id="collegeDropdown" role="button"
                                data-bs-toggle="dropdown">
                                College Admission
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="collegeDropdown">
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-book"></i> Science Group</a></li>
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-book"></i> Business Studies</a></li>
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-book"></i> Humanities</a></li>
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-book"></i> English Version</a></li>
                            </ul>
                        </li>

                        <!-- University Admission -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="{{route('auth.signupPage')}}" id="universityDropdown" role="button"
                                data-bs-toggle="dropdown">
                                University Admission
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="universityDropdown">
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-arrow-right"></i> A Unit (Science)</a></li>
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-arrow-right"></i> B Unit (Humanities)</a></li>
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-arrow-right"></i> C Unit (Business Studies)</a></li>
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-arrow-right"></i> D Unit (Mixed)</a></li>
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-arrow-right"></i> GST Admission</a></li>
                            </ul>
                        </li>

                       
                        <li class="nav-item">
                            <a class="nav-link" href="{{route('auth.signupPage')}}">Contact</a>
                        </li>

                       
                    </ul>
                    <div class="desk-top-login">
                        <div class="nav-item login-button">
                              @if(Auth::check())
                               <a href="{{ Auth::user()->role_status == 0 ? route('frontend.user.dashboard') : route('admin.dashboard') }}" type="button" class="btn btn_warning" style="color:black; background:#bbd1ca;">👤 {{ Auth::user()->name }}</a>
                                    
                                @else
                                    <a href="{{route('auth.signupPage')}}" type="button" class="btn btn_warning">Admission</a>
                                @endif
                          
                        </div>
                    </div>

                </div>