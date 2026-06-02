@extends('layouts.frontend.app')

@section('content')
     <!-- Navigation Bar for Small/Mobile Devices -->
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
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/free-exam/IELTS">
                                    <i class="fa-solid fa-arrows-turn-right"></i>  IELTS
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/free-exam/Daily-Exam-Test">
                                    <i class="fa-solid fa-arrows-turn-right"></i>  Daily Exam Test
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/free-exam/BCS">
                                    <i class="fa-solid fa-arrows-turn-right"></i>  BCS
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/free-exam/PRIMARY">
                                    <i class="fa-solid fa-arrows-turn-right"></i>  PRIMARY
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/free-exam/NTRCA">
                                    <i class="fa-solid fa-arrows-turn-right"></i>  NTRCA
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/free-exam/BANK">
                                    <i class="fa-solid fa-arrows-turn-right"></i>  BANK
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/free-exam/11-20th-Grade">
                                    <i class="fa-solid fa-arrows-turn-right"></i>  11-20th Grade
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/free-exam/9th-10th-Grade">
                                    <i class="fa-solid fa-arrows-turn-right"></i>  9th-10th Grade
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/free-exam/RECORDED-COURSES">
                                    <i class="fa-solid fa-arrows-turn-right"></i>  RECORDED COURSES
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/free-exam/Recent-Affairs">
                                    <i class="fa-solid fa-arrows-turn-right"></i>  Recent Affairs
                                </a>
                            </li>
                        </ul>
                    </li>

                    <!-- Course Dropdown -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="paidDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false" style="font-weight: 700; color: #89181A;">
                            Courses
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="paidDropdown"
                            style="max-height: 300px; overflow-y: auto;">
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/category/Daily-Exam-Test" "="">
                                    <i class=" fa-solid fa-hand-point-right"></i>  Daily Exam Test
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/category/BCS" "="">
                                    <i class=" fa-solid fa-hand-point-right"></i>  BCS
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/category/PRIMARY" "="">
                                    <i class=" fa-solid fa-hand-point-right"></i>  PRIMARY
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/category/NTRCA" "="">
                                    <i class=" fa-solid fa-hand-point-right"></i>  NTRCA
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/category/BANK" "="">
                                    <i class=" fa-solid fa-hand-point-right"></i>  BANK
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/category/11-20th-Grade" "="">
                                    <i class=" fa-solid fa-hand-point-right"></i>  11-20th Grade
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/category/9th-10th-Grade" "="">
                                    <i class=" fa-solid fa-hand-point-right"></i>  9th-10th Grade
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/category/RECORDED-COURSES" "="">
                                    <i class=" fa-solid fa-hand-point-right"></i>  RECORDED COURSES
                                </a>
                            </li>
                        </ul>
                    </li>

                    <!-- Exams Dropdown -->
                    <li class="nav-item dropdown exam">
                        <a class="nav-link dropdown-toggle" href="#" id="examDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false" style="font-weight: 700; color: #89181A;">
                            Exams
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="examDropdown"
                            style="max-height: 300px; overflow-y: auto;">
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/exam?BCS">
                                    <i class="fa-solid fa-share"></i>  BCS
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/exam?9th-10th-Grade">
                                    <i class="fa-solid fa-share"></i>  9th-10th Grade
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/exam?BANK">
                                    <i class="fa-solid fa-share"></i>  BANK
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/exam?PRIMARY">
                                    <i class="fa-solid fa-share"></i>  PRIMARY
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/exam?NTRCA">
                                    <i class="fa-solid fa-share"></i>  NTRCA
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="https://uac-bd.com/exam?11-20th-Grade">
                                    <i class="fa-solid fa-share"></i>  11-20th Grade
                                </a>
                            </li>
                        </ul>
                    </li>

                    <!-- More Dropdown -->
                    <li class="nav-item dropdown more">
                        <a class="nav-link dropdown-toggle" href="#" id="moreDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false" style="font-weight: 700; color: #89181A;">
                            More
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="moreDropdown">
                            <li>
                                <a class="dropdown-item " href="https://uac-bd.com/ielts">
                                    <i class="fa-solid fa-graduation-cap"></i>  IELTS
                                </a>
                            </li>

                            <li>
                                <a class="dropdown-item " href="https://uac-bd.com/blog">
                                    <i class="fa-solid fa-newspaper"></i>  ব্লগ
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item " href="https://uac-bd.com/all-question-bank">
                                    <i class="fa-solid fa-clipboard-question"></i>  প্রশ্নব্যাংক
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item " href="https://uac-bd.com/all-products">
                                    <i class="fa-solid fa-book"></i>  বই
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item " href="https://uac-bd.com/notice">
                                    <i class="fa-solid fa-bell"></i>  নোটিশ
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item " href="https://uac-bd.com/job-circular">
                                    <i class="fa-solid fa-briefcase"></i>  চাকরির খবর
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>





    <!-- Preloader -->



    <section class="row" id="Home_add">
        <div class="col-lg-2" style="padding: calc(var(--bs-gutter-x)* .0); !important;">
            <div class="home-1st-add-image">
                <a href="https://play.google.com/store/apps/details?id=com.nextive.uac-bd.021" target="_blank"><img
                        src="{{asset('frontEnd/images/home-page-bn-1-v13-eid.webp')}}" alt="Home 1st Add Banner" srcset="" loading="lazy"></a>
            </div>
        </div>
        <div class="col-lg-7 col-md-12" style="
           padding-left: calc(var(--bs-gutter-x) * 0.08) !important;
           padding-right: calc(var(--bs-gutter-x) * 0.08) !important;
           padding-top: 0 !important;
           padding-bottom: 0 !important;">
            <div class="home-2nd-add-image">
                <a href="https://uac-bd.com/instructor"><img src="{{asset('frontEnd/images/home-page-bn-2-v13-eid-v2.png')}}"
                        alt="Home 2nd Add Banner" srcset="" loading="lazy"></a>
            </div>
        </div>
        <div class="col-lg-3" style="padding: 0 !important;">
            <div class="home-3rd-add-image dropdown">
                <a href="https://uac-bd.com/free-course" class="dropdown-toggle" id="home3rdAddDropdown"
                    data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="{{asset('frontEnd/images/home-page-bn-3-v13-eid.webp')}}" alt="Home 3rd Add Banner" loading="lazy" srcset="">
                </a>
                <ul class="dropdown-menu" aria-labelledby="home3rdAddDropdown"
                    style="max-height: 400px; overflow-y: auto;">
                    <li>
                        <a class="dropdown-item" href="https://uac-bd.com/free-exam/IELTS">
                            <i class="fa-solid fa-arrows-turn-right"></i>  IELTS
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="https://uac-bd.com/free-exam/Daily-Exam-Test">
                            <i class="fa-solid fa-arrows-turn-right"></i>  Daily Exam Test
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="https://uac-bd.com/free-exam/BCS">
                            <i class="fa-solid fa-arrows-turn-right"></i>  BCS
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="https://uac-bd.com/free-exam/PRIMARY">
                            <i class="fa-solid fa-arrows-turn-right"></i>  PRIMARY
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="https://uac-bd.com/free-exam/NTRCA">
                            <i class="fa-solid fa-arrows-turn-right"></i>  NTRCA
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="https://uac-bd.com/free-exam/BANK">
                            <i class="fa-solid fa-arrows-turn-right"></i>  BANK
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="https://uac-bd.com/free-exam/11-20th-Grade">
                            <i class="fa-solid fa-arrows-turn-right"></i>  11-20th Grade
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="https://uac-bd.com/free-exam/9th-10th-Grade">
                            <i class="fa-solid fa-arrows-turn-right"></i>  9th-10th Grade
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="https://uac-bd.com/free-exam/RECORDED-COURSES">
                            <i class="fa-solid fa-arrows-turn-right"></i>  RECORDED COURSES
                        </a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="https://uac-bd.com/free-exam/Recent-Affairs">
                            <i class="fa-solid fa-arrows-turn-right"></i>  Recent Affairs
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </section>

    <main>
        

        <section id="Home_main_banner" class="background-res background-ats py-3 py-lg-5 d-lg-none"
            style="background-image: url('frontEnd/images/Background-banner-v5-eid.webp')">
            <div class="course-container d-lg-none">
                <div class="course-title">Study Room</div>


                <div class="d-flex justify-content-center flex-wrap">
                    <div class="course-box" style="flex: 1 1 100%;">
                        <a href="https://uac-bd.com/daily-contents">
                            <img src="{{asset('frontEnd/images/daily_update-small-devices.png')}}" alt="" loading="lazy" srcset="">
                            <p style="color: white;">Daily Updates</p>
                        </a>
                    </div>
                </div>

                <div class="course-section d-flex justify-content-around flex-wrap" style="gap: 5px;">
                    <div class="course-box" style="flex: 1 1 auto;">
                        <a href="https://uac-bd.com/free-course">
                            <img src="{{asset('frontEnd/images/hscbag_1732778180651.png')}}" alt="" loading="lazy" srcset="">
                            <p style="color: white;">Free StudyRoom</p>
                        </a>
                    </div>
                    <div class="course-box" style="flex: 1 1 auto;">
                        <a href="https://uac-bd.com/course">
                            <img src="{{asset('images/ssc_1732778162589.png')}}" alt="" loading="lazy" srcset="">
                            <p style="color: white;">Premium Course</p>
                        </a>
                    </div>
                </div>
                <div class="course-section col-md-12 col-lg-4">
                    <div class="home-video-feature-area">
                        <div class="row">
                            <div class="col-4">
                                <div class="home-feature-video">
                                    <div class="ratio ratio-1x1"
                                        style="position: relative; width: 100%; height: 0; padding-bottom: 100%;">
                                        <img class="img img-thumbnail-custom lazyload"
                                            src="{{asset('images/recent-job-solution-v1-eid.webp')}}"
                                            alt="Recent Job Solution Banner"
                                            style="position: absolute; top: 12%; left: 0; width: 100%; height: 76%;"
                                            srcset="">
                                        <!-- Transparent overlay to trigger the click event -->
                                        <div onclick="showVideoModal('https://www.youtube.com/embed/87jPFaOpFrk?autoplay=1')"
                                            style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; cursor: pointer;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="home-feature-video">
                                    <div class="ratio ratio-1x1"
                                        style="position: relative; width: 100%; height: 0; padding-bottom: 100%;">
                                        <img class="img img-thumbnail-custom lazyload"
                                            src="{{asset('images/teacher-trip-advice-v1-eid.webp')}}"
                                            alt="Teachers Tips & Advice Banner"
                                            style="position: absolute; top: 12%; left: 0; width: 100%; height: 76%;"
                                            srcset="">
                                        <!-- Transparent overlay to trigger the click event -->
                                        <div onclick="showVideoModal('https://www.youtube.com/embed/_UgDurRDFew?autoplay=1')"
                                            style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; cursor: pointer;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="home-feature-video">
                                    <div class="ratio ratio-1x1"
                                        style="position: relative; width: 100%; height: 0; padding-bottom: 100%;">
                                        <img class="img img-thumbnail-custom lazyload"
                                            src="{{asset('images/app-website-use-rules-v2-eid.webp')}}"
                                            alt="APP Website Uses Rules Banner"
                                            style="position: absolute; top: 12%; left: 0; width: 100%; height: 76%;"
                                            srcset="">
                                        <!-- Transparent overlay to trigger the click event -->
                                        <div onclick="showVideoModal('https://www.youtube.com/embed/bwGq8IHxRxI?autoplay=1')"
                                            style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; cursor: pointer;">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>

        <section id="Home_category" class="background-res background-ats py-5"
            style="background-image: url('frontEnd/images/home-page-category-bg-v5.webp')">
            <div class="container">
                <div class="row mb-5">
                    <div class="title-area text-center">
                        <h1 class="fw-bold custom-section-title">
                            <span>Emergency</span> Desk
                        </h1>


                    </div>
                </div>

                <div class="emergency-course-section d-flex justify-content-around flex-wrap">
                    <a href="https://uac-bd.com/free-course" class="emergency-box">
                        <img src="{{asset('frontEnd/images/free-staudy-room.webp')}}" alt="Free Studyroom" class="img-fluid">
                        <p class="pointer-cursor text-center text-uppercase">Free Studyroom</p>
                    </a>

                    <a href="https://uac-bd.com/guideline" class="emergency-box">
                        <img src="{{asset('frontEnd/images/all-job-guidelines-techniques.webp')}}" alt="All Job Guidelines & Techniques"
                            class="img-fluid">
                        <p class="pointer-cursor text-center text-uppercase">Job Guidelines</p>
                    </a>

                    <a href="https://uac-bd.com/with-mukul-sir" class="emergency-box">
                        <img src="{{asset('frontEnd/images/ZahanSir.png')}}" alt="Mukul Sir এর সাথে" class="img-fluid">
                        <p class="pointer-cursor text-center">Zahan Sir এর সাথে</p>
                    </a>

                    <a href="https://uac-bd.com/leaderboard" class="emergency-box">
                        <img src="{{asset('frontEnd/images/leader-board.webp')}}" alt="Leader Board" class="img-fluid">
                        <p class="pointer-cursor text-center text-uppercase">Leader Board</p>
                    </a>

                    <a href="https://uac-bd.com/students-review" class="emergency-box">
                        <img src="{{asset('frontEnd/images/students-review.webp')}}" alt="Students Review" class="img-fluid">
                        <p class="pointer-cursor text-center text-uppercase">Students Review</p>
                    </a>

                    <a href="https://uac-bd.com/faq" class="emergency-box">
                        <img src="{{asset('frontEnd/images/faq.webp')}}" alt="আপনার জিজ্ঞাসা / FAQ" class="img-fluid">
                        <p class="pointer-cursor text-center text-uppercase">আপনার জিজ্ঞাসা / FAQ</p>
                    </a>

                </div>

            </div>
        </section>

        <section id="Our_service" class="background-res background-ats py-4"
            style="background-image: url('frontEnd/images/main-category-bg-v5-eid.webp')">
            <div class="container-fluid py-3">
                <div class="row">
                    <div class="title-area text-center">
                        <h2 class="fw-bold mb-4 custom-section-title">Premium StudyRoom <br></h2>

                    </div>
                </div>
                <div class="home-services-area">
                    <div class="row" style="--bs-gutter-x: 0.3rem; !important;">
                        <div class="col-md-3 col-6 mb-1 dropdown bcs-jobs" id="home-services-area-one">
                            <a href="https://uac-bd.com/course">
                                <div class="my-home-service premium-course-box">
                                    <div class="my-home-service-icon">
                                        <img src="{{asset('frontEnd/images/bcs-job-v5.png')}}" alt="" loading="lazy">
                                    </div>
                                    <div class="my-home-service-content">
                                        <h3>JOB COURSES</h3>
                                    </div>
                                </div>
                            </a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a class="dropdown-item" href="https://uac-bd.com/category/Daily-Exam-Test">
                                        <i class="fa-solid fa-hand-point-right"></i>  Daily Exam Test
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="https://uac-bd.com/category/BCS">
                                        <i class="fa-solid fa-hand-point-right"></i>  BCS
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="https://uac-bd.com/category/PRIMARY">
                                        <i class="fa-solid fa-hand-point-right"></i>  PRIMARY
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="https://uac-bd.com/category/NTRCA">
                                        <i class="fa-solid fa-hand-point-right"></i>  NTRCA
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="https://uac-bd.com/category/BANK">
                                        <i class="fa-solid fa-hand-point-right"></i>  BANK
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="https://uac-bd.com/category/11-20th-Grade">
                                        <i class="fa-solid fa-hand-point-right"></i>  11-20th Grade
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="https://uac-bd.com/category/9th-10th-Grade">
                                        <i class="fa-solid fa-hand-point-right"></i>  9th-10th Grade
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-item" href="https://uac-bd.com/category/RECORDED-COURSES">
                                        <i class="fa-solid fa-hand-point-right"></i>  RECORDED COURSES
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-3 col-6 mb-1" id="home-services-area-two" data-toggle="tooltip"
                            data-placement="bottom" title="Tooltip on bottom">
                            <a href="https://uac-bd.com/exam">
                                <div class="my-home-service premium-course-box" data-bs-toggle="tooltip"
                                    data-bs-placement="bottom"
                                    data-bs-title="পরীক্ষা হলো শিক্ষার্থীদের জ্ঞান, দক্ষতা এবং শেখার অগ্রগতি মূল্যায়ন করার একটি প্রক্রিয়া। এটি শিক্ষাপ্রতিষ্ঠানে সাধারণত নির্দিষ্ট সময় পর অনুষ্ঠিত হয়।">
                                    <div class="my-home-service-icon">
                                        <img src="{{asset('frontEnd/images/exam-v5.png')}}" alt="" loading="lazy">
                                    </div>
                                    <div class="my-home-service-content">
                                        <h3>EXAMS</h3>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 col-6 mb-1" id="home-services-area-three">
                            <a href="https://boibari.com" target="_blank">
                                <div class="my-home-service premium-course-box" data-bs-toggle="tooltip"
                                    data-bs-placement="bottom"
                                    data-bs-title="বিভিন্ন চাকরি পরীক্ষার জন্য নির্দিষ্ট বই অনুসরণ করুন, যাতে আপনি পুরোপুরি প্রস্তুত হতে পারেন!">
                                    <div class="my-home-service-icon">
                                        <img src="{{asset('frontEnd/images/next-page-v5.png')}}" alt="" loading="lazy">
                                    </div>
                                    <div class="my-home-service-content">
                                        <h3>চাকরি প্রস্তুতির যত বই</h3>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-3 col-6 mb-1" id="home-services-area-four">
                            <a href="https://uac-bd.com/ielts" target="_blank">
                                <div class="my-home-service premium-course-box" data-bs-toggle="tooltip"
                                    data-bs-placement="bottom" data-bs-title="">
                                    <div class="my-home-service-icon">
                                        <img src="{{asset('frontEnd/images/it-career-v5.png')}}" alt="" loading="lazy">
                                    </div>
                                    <div class="my-home-service-content">
                                        <h3>IELTS প্রস্তুতি</h3>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="Home_Our_courses">
            <div class="container">
                <div class="row mb-5">
                    <div class="title-area text-center">
                        <h2 class="fw-bold custom-section-title">
                            Latest Premium <span>Courses</span>
                        </h2>
                        <h5 class="text-muted mb-3">(যে সব কোর্সে ভর্তি চলছে...)</h5>

                    </div>
                </div>
                <div class="home-category-area mt-5">
                    <div class="row justify-content-center">

                        <div class="home-category-item" id="category-item-214">

                            <a href="https://uac-bd.com/category/Daily-Exam-Test">
                                <div class="my-course-category">
                                    <div class="my-course-category-icon">
                                        <i class="fa-solid fa-book"></i>
                                    </div>
                                    <div class="my-course-category-content">
                                        <h3>Daily Exam Test </h3>

                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="home-category-item" id="category-item-1">

                            <a href="https://uac-bd.com/category/BCS">
                                <div class="my-course-category">
                                    <div class="my-course-category-icon">
                                        <i class="fa-solid fa-book"></i>
                                    </div>
                                    <div class="my-course-category-content">
                                        <h3>BCS </h3>

                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="home-category-item" id="category-item-50">

                            <a href="https://uac-bd.com/category/PRIMARY">
                                <div class="my-course-category">
                                    <div class="my-course-category-icon">
                                        <i class="fa-solid fa-book"></i>
                                    </div>
                                    <div class="my-course-category-content">
                                        <h3>PRIMARY </h3>

                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="home-category-item" id="category-item-163">

                            <a href="https://uac-bd.com/category/NTRCA">
                                <div class="my-course-category">
                                    <div class="my-course-category-icon">
                                        <i class="fa-solid fa-book"></i>
                                    </div>
                                    <div class="my-course-category-content">
                                        <h3>NTRCA </h3>

                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="home-category-item" id="category-item-52">

                            <a href="https://uac-bd.com/category/BANK">
                                <div class="my-course-category">
                                    <div class="my-course-category-icon">
                                        <i class="fa-solid fa-book"></i>
                                    </div>
                                    <div class="my-course-category-content">
                                        <h3>BANK </h3>

                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="home-category-item" id="category-item-86">

                            <a href="https://uac-bd.com/category/11-20th-Grade">
                                <div class="my-course-category">
                                    <div class="my-course-category-icon">
                                        <i class="fa-solid fa-book"></i>
                                    </div>
                                    <div class="my-course-category-content">
                                        <h3>11-20th Grade </h3>

                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="home-category-item" id="category-item-91">

                            <a href="https://uac-bd.com/category/9th-10th-Grade">
                                <div class="my-course-category">
                                    <div class="my-course-category-icon">
                                        <i class="fa-solid fa-book"></i>
                                    </div>
                                    <div class="my-course-category-content">
                                        <h3>9th-10th Grade </h3>

                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="home-category-item" id="category-item-185">

                            <a href="https://uac-bd.com/category/RECORDED-COURSES">
                                <div class="my-course-category">
                                    <div class="my-course-category-icon">
                                        <i class="fa-solid fa-book"></i>
                                    </div>
                                    <div class="my-course-category-content">
                                        <h3>RECORDED COURSES </h3>

                                    </div>
                                </div>
                            </a>
                        </div>

                    </div>
                </div>
                
            </div>
        </section>

      

    </main>
    <!-- Modal -->
    <div class="modal fade" id="popupModal" data-bs-backdrop="static" data-modal-parent="courseContentModal">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="modal-body p-0">
                    <div class="card card-body p-0">
                        <img src="{{asset('frontEnd/images/popup.png')}}" alt="popup-img" class="popup-img"
                            style="height: 60%;" loading="lazy" srcset="">


                    </div>
                </div>
            </div>
        </div>
    </div>


    


    <section id="App_store" class="background-res background-ats py-5"
        style="background-image: url('frontEnd/images/footer-background-eid.webp')">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-5 col-lg-6">
                    <div class="style-2phone-image">
                        <a
                            href="https://play.google.com/store/apps/details?id=com.nextive.uac-bd.021&pcampaignid=web_share&pli=1"><img
                                src="{{asset('frontEnd/images/mobile-app-v3-pro.png')}}" class="img-fluid" alt="" srcset=""></a>
                    </div>
                </div>
                <div class="col-md-7 col-lg-6">
                    <div class="download-text">
                        <h5 class="text-white">ডাউনলোড করুন</h5>
                        <h2>UAC App</h2>
                    </div>
                    <div class="rattingandflowers-area">
                        <div class="row">
                            <div class="col-4 learner-count">
                                <h2>180K+</h2>
                                <p> Learners</p>
                            </div>
                            <div class="col-4 review-count">
                                <h2>4.7 <span> <img src="{{asset('frontEnd/images/start.png')}}" class="img-fluid" alt=""></span></h2>
                                <p>Positive<br> Reviews</p>
                            </div>
                            <div class="col-4 courses-count">
                                <h2>180+</h2>
                                <p>Skill based Courses</p>
                            </div>
                        </div>
                    </div>
                    <div class="download-hint">
                        <p>ডাউনলোড করুন UAC অ্যাপ,<br>
                            শুরু করুন এখান থেকেই</p>
                    </div>
                    <div class="download-store-path">
                        <div class="app-store">
                            <a href="#">
                                <img class="img-fluid" src="{{asset('frontEnd/images/app-store.png')}}" alt="App Store" srcset=""></a>
                        </div>
                        <div class="play-store">
                            <a href="https://play.google.com/store/apps/details?id=com.nextive.uac-bd.021">
                                <img class="img-fluid" src="{{asset('frontEnd/images/google-play.png')}}" alt="Google Play Store"
                                    srcset=""></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
@endsection

