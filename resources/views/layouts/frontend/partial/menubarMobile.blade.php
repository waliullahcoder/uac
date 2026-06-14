 <nav class="navbar navbar-expand navbar-light d-block d-lg-none" style="background-color: #E6F1F3;">
        <div class="container">
            <div class="navbar-collapse">
                <!-- Center-align the navigation items -->
                <ul class="navbar-nav justify-content-center w-100">
                    <!-- Free Dropdown -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="freeDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false" style="font-weight: 700; color: #89181A;">
                            Free Exams
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="freeDropdown"
                            style="max-height: 300px; overflow-y: auto;">
                            <li class="nav-item">
                            <a class="nav-link active" href="#">Home</a>
                        </li>

                        <!-- School Admission -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="schoolDropdown" role="button"
                                data-bs-toggle="dropdown">
                                School Admission
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="schoolDropdown">
                                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-graduation-cap"></i> Class 1-5</a></li>
                                  @foreach($schoolcategories as $scategory)
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-graduation-cap"></i> {{$scategory->name}}</a></li>
                                @endforeach
                            </ul>
                        </li>

                        <!-- College Admission -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="collegeDropdown" role="button"
                                data-bs-toggle="dropdown">
                                College Admission
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="collegeDropdown">
                               @foreach($collegecategories as $ccategory)
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-book"></i> {{$ccategory->name}}</a></li>
                                @endforeach
                            </ul>
                        </li>

                        <!-- University Admission -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="universityDropdown" role="button"
                                data-bs-toggle="dropdown">
                                University Admission
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="universityDropdown">
                               @foreach($universitycategories as $ucategory)
                                <li><a class="dropdown-item" href="{{route('auth.signupPage')}}"><i class="fa-solid fa-arrow-right"></i> {{$ucategory->name}}</a></li>
                                @endforeach
                            </ul>
                        </li>

                       
                        <li class="nav-item">
                            <a class="nav-link" href="#">01922222222</a>
                        </li>
                </ul>
            </div>
        </div>
    </nav>
