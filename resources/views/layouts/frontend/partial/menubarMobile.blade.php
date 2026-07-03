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
                                School
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="schoolDropdown">
                                <li><a class="dropdown-item" href="#"><i class="fa-solid fa-graduation-cap"></i> Class 1-5</a></li>
                                  @foreach($schoolcategories as $scategory)
                                    @foreach($scategory->products as $product)
                                    <li><a class="dropdown-item" href="{{route('auth.signupPage',$product->id)}}"><i class="fa-solid fa-graduation-cap"></i> {{$product->name}}</a></li>
                                    @endforeach
                                @endforeach
                            </ul>
                        </li>

                        <!-- College Admission -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="collegeDropdown" role="button"
                                data-bs-toggle="dropdown">
                                College
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="collegeDropdown">
                               @foreach($collegecategories as $ccategory)
                                @foreach($ccategory->products as $product)
                                    <li><a class="dropdown-item" href="{{route('auth.signupPage',$product->id)}}"><i class="fa-solid fa-book"></i> {{$product->name}}</a></li>
                                    @endforeach
                                @endforeach
                            </ul>
                        </li>

                        <!-- University Admission -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="universityDropdown" role="button"
                                data-bs-toggle="dropdown">
                                University
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="universityDropdown">
                               @foreach($universitycategories as $ucategory)
                                    @foreach($ucategory->products as $product)
                                    <li><a class="dropdown-item" href="{{route('auth.signupPage',$product->id)}}"><i class="fa-solid fa-arrow-right"></i> {{$product->name}}</a></li>
                                    @endforeach
                                @endforeach
                            </ul>
                        </li>
                         <!-- Book Sale-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle active" href="https://uac-bd.com/category/470">
                                Books Sale
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="universityDropdown">
                                @foreach($bookssalecategories as $salecategory)
                                 @foreach($salecategory->products as $product)
                                <li><a class="dropdown-item" href="{{route('auth.signupPage',$product->id)}}"><i class="fa-solid fa-arrow-right"></i> {{$product->name}}</a></li>
                                 @endforeach
                                @endforeach
                            </ul>
                        </li>

                       
                        <li class="nav-item">
                             <a class="nav-link" href="">{{$settings->primary_phone}}, {{$settings->secondary_phone}}</a>
                        </li>
                </ul>
            </div>
        </div>
    </nav>
