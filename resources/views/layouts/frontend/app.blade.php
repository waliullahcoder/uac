<!DOCTYPE html>
<html lang="en">

<head>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="description" content="{{$settings->meta_description?? 'UAC কুইজে অংশগ্রহণ করুন এবং পুরস্কার জিতুন। সহজ, মজাদার ও শিক্ষামূলক কুইজ।'}}">
    <meta name="keywords" content="{{$settings->meta_keyword?? 'বই, অনলাইন বই, বই বিক্রি, কমিশন, ঘরে বসে আয়'}}">
    <meta name="author" content="UAC">

    {{-- Open Graph / Facebook --}}
  <meta name="google-adsense-account" content="ca-pub-1708755033819667">
    <meta property="og:type" content="website">
    <meta property="og:url" content="{{ url()->current() }}">
    <meta property="og:title" content="{{$settings->meta_title?? 'UAC'}}">
    <meta property="og:description" content="{{$settings->meta_description?? 'UAC কুইজে অংশগ্রহণ করুন এবং পুরস্কার জিতুন। সহজ, মজাদার ও শিক্ষামূলক কুইজ।'}}">
    <meta property="og:image" content="{{asset($settings->meta_image?? 'frontend/images/logo/logo.jpg')}}">

    {{-- Canonical --}}
    <link rel="canonical" href="{{ url()->current() }}">
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <title>{{ $settings->title ?? 'UAC' }}</title>
    <link rel="shortcut icon"
        href="{{ asset(file_exists($settings->favicon) ? $settings->favicon : 'frontend/images/logo/favicon.png') }}"
        type="image/x-icon">
    @include('layouts.frontend.partial.styles')

    

</head>

<body>
    @include('layouts.frontend.partial.header')
   @if(session('success'))
    <div class="alert alert-success alert-dismissible fade show" role="alert" style="margin-top:20px;">
        {{ session('success') }}
        <button type="button" class="btn-close" data-bs-dismiss="alert"></button>
    </div>
   @endif
    @if ($errors->any())
        <div class="alert alert-danger">
            <ul class="mb-0">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    @yield('content')

    <footer id="Footer">
        <div class="container">
            <div class="row g-4">
                <div class="col-sm-12 col-md-4">
                    <div class="footer-logo-content mb-lg-5">
                        <div class="footer-logo">
                            <div class="footer-logo-image">
                                <img src="{{asset('frontend/images/logo_jpg.jpg')}}" alt="" srcset="">
                            </div>
                        </div>
                        <div class="footer-logo-text">
                            <p>For thousands of job seekers across the country,
                                <br>UAC is the biggest online job preparation platform, a sign of trustworthiness
                                and hope. Set off on the adventure and enjoy unwavering hospitality.
                            </p>
                        </div>
                        <div class="footer-social-media-area">
                            <div class="social-media-icon">
                                <div class="facebook-icon">
                                    <a href="https://www.facebook.com/biddaabari" target="_blank"><i
                                            class="fa-brands fa-facebook"></i></a>
                                </div>
                                <div class="youtube-icon">
                                    <a href="https://www.youtube.com/@uac-bd. target="_blank"><i
                                            class="fa-brands fa-youtube"></i></a>
                                </div>
                                <div class="instagram-icon">
                                    <a href="https://www.instagram.com/uac-bd.insta" target="_blank"><i
                                            class="fa-brands fa-instagram"></i></a>
                                </div>
                                <div class="linkedin-icon">
                                    <a href="https://www.linkedin.com/in/uac-bd. target="_blank"><i
                                            class="fa-brands fa-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="footer-others-div">
                        <div class="row g-4">
                            <div class="col-6 col-md-4">
                                <div class="about-us">
                                    <h3>About Us</h3>
                                    <ul>
                                        <li><a href="#/about-us">About Us</a></li>
                                        <li><a href="#/instructor">Instructor</a></li>
                                        <li><a href="#/refund-policy">Refund Policy</a></li>
                                        <li><a href="#/contact-us">Contact Us</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-6 col-md-4">
                                <div class="resources">
                                    <h3>Resources</h3>
                                    <ul>
                                        <li><a href="#/course">Courses</a></li>
                                        <li><a href="#/blog">Our Blog</a></li>
                                        <li><a href="#/terms-and-conditions">Terms & Conditions</a>
                                        </li>
                                        <li><a href="#/privacy-policy">Privacy Policy</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-4">
                                <div class="official-info">
                                    <h3>Official Info</h3>
                                    <ul>
                                        <li>
                                            <i class="fa-regular fa-envelope"></i>
                                            <a href="mailto:support@gmail.com">info@uac-bd.com</a>
                                        </li>
                                        <li>
                                            <i class="fa-solid fa-phone"></i>
                                            <a href="tel:+8801894674181">01894674181</a>
                                        </li>
                                        <li>
                                            <i class="fa-solid fa-location-dot"></i>
                                            <a href="#/contact-us">ChemiTex BD, UAC Ltd, English Center & Publications Ltd, 3, Arambagh,  Motijheel, Dhaka, Bangladesh</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-12">
                <img class="img-fluid" src="{{asset('frontend/images/SSL.webp')}}" alt="SSL Image" srcset="">
            </div>
            <br>
        </div>
        <div class="copy-right-section">
            <div class="container">
                <p>Copyright © 2026 <span><a href="#">UAC</a></span> All rights reserved</p>
            </div>
        </div>
    </footer>


    <button class="scroll-indicator" aria-label="Scroll direction indicator" title="More content below">
        <i class="fas fa-arrow-down arrow" style="animation: 2s ease 0s infinite normal none running bounce-down;"></i>
    </button>







    <!-- JavaScript Libraries (footer) -->
    


 @include('layouts.frontend.partial.scripts')



    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const preloader = document.querySelector('.preloader');

            // Start flush animation immediately
            preloader.style.animation = 'flush 1s ease-in-out forwards';

            // Remove preloader after the animation ends
            preloader.addEventListener('animationend', function () {
                preloader.remove();
            });
        });

    </script>



    <script>
        // Function to show video modal and set video source
        function showVideoModal(videoSrc) {
            document.getElementById('modalVideo').src = videoSrc; // Autoplay the video
            $('#videoModal').modal('show');
        }
        // When the modal is hidden, remove the src to stop the video
        $('#videoModal').on('click', '.btn-close', function () {
            document.getElementById('modalVideo').src = ''; // This will stop the video
            $('#videoModal').modal('hide');
        });
    </script>









    <script>
        setTimeout(function () {
            var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
            tooltipTriggerList.forEach(function (tooltipTriggerEl) {
                new bootstrap.Tooltip(tooltipTriggerEl);
            });
        }, 1000); // Delay of 1 second
        $(document).ready(function () {
            $('[data-bs-toggle="tooltip"]').tooltip();
        });

    </script>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            function shouldShowPopup() {
                const lastShown = localStorage.getItem('popup_last_shown');
                if (!lastShown) return true;
                const now = Date.now();
                const tenMinutes = 10 * 60 * 1000;
                return (now - parseInt(lastShown)) > tenMinutes;
            }

            function showPopup() {
                var popupModal = new bootstrap.Modal(document.getElementById('popupModal'));
                popupModal.show();
                localStorage.setItem('popup_last_shown', Date.now().toString());
            }

            if (shouldShowPopup()) {
                showPopup();
            }
        });
    </script>


    <script>
        $(document).ready(function () {
            let currentCategory = 'all';
            let isShowingAll = false;
            let totalItems = parseInt("587");

            // এনিমেশন: কার্ডগুলো হালকা করে দেখানো
            const cardsObserver = new IntersectionObserver((entries) => {
                entries.forEach((entry, i) => {
                    if (entry.isIntersecting) {
                        setTimeout(() => entry.target.classList.add('visible'), i * 120);
                        cardsObserver.unobserve(entry.target);
                    }
                });
            }, { threshold: 0.1 });
            document.querySelectorAll('.kriti-card').forEach(card => cardsObserver.observe(card));

            function updateButtonVisibility(count) {
                totalItems = count;
                if (totalItems > 3) {
                    $('#see-more-btn-wrapper').show();
                } else {
                    $('#see-more-btn-wrapper').hide();
                }
            }

            function loadAdvices(category, limit, callback) {
                $.ajax({
                    url: "#/student-advice/fetch",
                    type: "GET",
                    data: { category_slug: category, limit: limit },
                    success: function (response) {
                        if (response.success) {
                            $('#advice-cards-container').html(response.data);
                            // নতুন কার্ডে এনিমেশন যোগ
                            document.querySelectorAll('.kriti-card').forEach(card => cardsObserver.observe(card));
                            if (callback) callback(response.total);
                        } else {
                            alert('সার্ভার ত্রুটি, পরে চেষ্টা করুন।');
                        }
                    },
                    error: function () {
                        alert('নেটওয়ার্ক ত্রুটি।');
                    }
                });
            }

            // ক্যাটাগরি ক্লিক
            $('#category-tabs').on('click', '.filter-btn', function () {
                if ($(this).hasClass('active')) return;
                $('#category-tabs .filter-btn').removeClass('active');
                $(this).addClass('active');
                currentCategory = $(this).data('category');
                isShowingAll = false;
                loadAdvices(currentCategory, 3, function (total) {
                    updateButtonVisibility(total);
                    $('#see-more-btn').show();
                    $('#show-less-btn').hide();
                });
            });

            // আরও দেখুন
            $('#see-more-btn').click(function () {
                if (isShowingAll) return;
                isShowingAll = true;
                loadAdvices(currentCategory, 'all', function (total) {
                    $('#see-more-btn').hide();
                    $('#show-less-btn').show();
                });
            });

            // কম দেখুন
            $('#show-less-btn').click(function () {
                isShowingAll = false;
                loadAdvices(currentCategory, 3, function (total) {
                    updateButtonVisibility(total);
                    $('#see-more-btn').show();
                    $('#show-less-btn').hide();
                });
            });
        });
    </script>

    <script>
        // ভিডিও মডাল
        function openVideoModal(videoId) {
            const iframe = document.getElementById('ytFrame');
            iframe.src = `https://www.youtube.com/embed/${videoId}?autoplay=1`;
            document.getElementById('ytModal').classList.add('open');
            document.body.classList.add('no-scroll');
        }
        function closeVideoModal(e, force) {
            if (force || (e && e.target === document.getElementById('ytModal'))) {
                document.getElementById('ytFrame').src = '';
                document.getElementById('ytModal').classList.remove('open');
                document.body.classList.remove('no-scroll');
            }
        }

        function playInlineVideo(thumbEl, videoId) {
            const iframe = thumbEl.querySelector('.inline-video-frame');
            const img = thumbEl.querySelector('img');
            const playBtn = thumbEl.querySelector('.play-btn');

            iframe.src = `https://www.youtube.com/embed/${videoId}?autoplay=1`;
            iframe.style.display = 'block';
            img.style.display = 'none';
            playBtn.style.display = 'none';
        }

        // লম্বা টেক্সট দেখানো/লুকানো (ইনলাইন)
        function toggleReadMore(btn) {
            const card = btn.closest('.text-card');
            const quoteBody = card.querySelector('.quote-body');
            const isExpanded = quoteBody.classList.contains('expanded');
            if (!isExpanded) {
                const fullText = card.dataset.full;
                if (fullText) quoteBody.textContent = fullText;
                quoteBody.classList.add('expanded');
                btn.textContent = 'কম দেখুন';
            } else {
                const shortText = card.dataset.short;
                if (shortText) quoteBody.textContent = shortText;
                quoteBody.classList.remove('expanded');
                btn.textContent = 'আরও দেখুন';
            }
        }

        // মডালে পূর্ণ টেক্সট দেখানোর জন্য (বিকল্প পদ্ধতি, ঐচ্ছিক)
        function openTxtModal(btn) {
            const card = btn.closest('.text-card');
            const fullText = card.dataset.full;
            if (fullText) {
                document.getElementById('txtBody').innerText = fullText;
                const personHtml = card.querySelector('.card-person').cloneNode(true);
                document.getElementById('txtPerson').innerHTML = personHtml.innerHTML;
                document.getElementById('txtModal').classList.add('open');
                document.body.classList.add('no-scroll');
            }
        }
        function closeTxtModal(e, force) {
            if (force || (e && e.target === document.getElementById('txtModal'))) {
                document.getElementById('txtModal').classList.remove('open');
                document.body.classList.remove('no-scroll');
            }
        }

        // সংক্ষিপ্ত টেক্সট স্টোর করে রাখা (পাতা লোডের সময়)
        // document.querySelectorAll('.text-card[data-full]').forEach(card => {
        //     const shortText = card.querySelector('.quote-body').textContent.trim();
        //     card.dataset.short = shortText;
        // });

        function toggleReadMore(btn) {
            const card = btn.closest('.text-card');
            const quoteBody = card.querySelector('.quote-body');
            const isExpanded = quoteBody.classList.contains('expanded');

            if (!isExpanded) {
                // data-short এখনো set না থাকলে এখন set করো (শুধু এই card এর জন্য)
                if (!card.dataset.short) {
                    card.dataset.short = quoteBody.textContent.trim();
                }
                // full text দেখাও
                quoteBody.textContent = card.dataset.full;
                quoteBody.classList.add('expanded');
                btn.textContent = 'কম দেখুন';
            } else {
                // short text ফিরিয়ে দাও
                quoteBody.textContent = card.dataset.short;
                quoteBody.classList.remove('expanded');
                btn.textContent = 'আরও দেখুন';
            }
        }

        // Testimonials section off-screen হলে animation pause
        const marqueeSection = document.querySelector('.testimonials-section');
        if (marqueeSection) {
            const tracks = document.querySelectorAll('.marquee-track');
            const sectionObserver = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    tracks.forEach(track => {
                        track.style.animationPlayState =
                            entry.isIntersecting ? 'running' : 'paused';
                    });
                });
            }, { threshold: 0.1 });
            sectionObserver.observe(marqueeSection);
        }

        // ESC কী
        document.addEventListener('keydown', e => {
            if (e.key === 'Escape') {
                closeVideoModal(null, true);
                closeTxtModal(null, true);
            }
        });
    </script>





    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const scrollIndicator = document.querySelector('.scroll-indicator');
            const arrow = document.querySelector('.arrow');

            // Initial check
            checkScrollPosition();

            // Update on scroll
            window.addEventListener('scroll', checkScrollPosition);

            function checkScrollPosition() {
                const atTop = window.scrollY === 0;
                const atBottom = window.innerHeight + window.scrollY >= document.body.scrollHeight - 100;

                // Change arrow direction and animation
                if (atTop) {
                    // At top - point down with bounce animation
                    scrollIndicator.classList.remove('scrolled');
                    arrow.style.animation = 'bounce-down 2s infinite';
                    scrollIndicator.title = "More content below";
                }
                else if (atBottom) {
                    // At bottom - point up with bounce animation
                    scrollIndicator.classList.add('scrolled');
                    arrow.style.animation = 'bounce-up 2s infinite';
                    scrollIndicator.title = "Scroll to top";
                }
                else {
                    // In middle - point up without bounce
                    scrollIndicator.classList.add('scrolled');
                    arrow.style.animation = 'none';
                    scrollIndicator.title = "Scroll to top";
                }
            }

            // Scroll to top when clicked
            scrollIndicator.addEventListener('click', function (e) {
                e.preventDefault();
                window.scrollTo({
                    top: 0,
                    behavior: 'smooth'
                });
            });

        });
    </script>



    <!--==================================== Start uac-bd.AI ============================== -->


    <link
        href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@400;500;600;700&family=Sora:wght@400;500;600;700&display=swap"
        rel="stylesheet">

    
    <!-- FAB BUTTON -->
    <button id="bd-fab" onclick="BW.toggle()" aria-label="UAC AI">
        <span class="bd-fi">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="2.2"
                stroke-linecap="round">
                <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"></path>
            </svg>
            <span id="bd-fab-label">Ask UAC AI</span>
        </span>
        <span class="bd-fx">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="2.5"
                stroke-linecap="round">
                <line x1="18" y1="6" x2="6" y2="18"></line>
                <line x1="6" y1="6" x2="18" y2="18"></line>
            </svg>
        </span>
        <span id="bd-pip">1</span>
    </button>

    <!-- WIDGET BOX -->
    <div id="bd-box">

        <!-- HEADER -->
        <div class="bd-hdr">
            <div class="bd-hdr-top">
                <div class="bd-av">🎓</div>
                <div class="bd-info">
                    <div class="bd-name">UAC AI <div class="bd-live-indicator">
                            <div class="bd-red-dot"></div> LIVE
                        </div>
                    </div>
                    <div class="bd-sub">Expert Support 24/7</div>
                </div>
                <button class="bd-close" onclick="BW.toggle()">
                    <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"
                        stroke-linecap="round">
                        <line x1="18" y1="6" x2="6" y2="18"></line>
                        <line x1="6" y1="6" x2="18" y2="18"></line>
                    </svg>
                </button>
            </div>
        </div>

        <!-- HOME VIEW -->
        <div class="bd-view bd-on" id="bd-vh">
            <div class="bd-data-bg"></div>
            <div class="bd-home-body">
                <div class="bd-greeting">How can we help? 👋</div>
                <div class="bd-gsub">Courses, Admission, Payment & Support</div>

                <!-- 3D LOGO ANIMATION -->
                <div class="bd-scene-container">
                    <div class="bd-crystal-wrap">
                        <div class="bd-orbit-ring bd-orbit-1"></div>
                        <div class="bd-orbit-ring bd-orbit-2"></div>
                        <div class="bd-orbit-ring bd-orbit-3"></div>
                        <div class="bd-logo-coin">
                            <div class="bd-logo-face front">
                                <img src="">
                            </div>
                        </div>
                    </div>
                </div>

                <!-- START CHAT CARD -->
                <button class="bd-card" onclick="BW.openChat()">
                    <div class="bd-card-ico">💬</div>
                    <div class="bd-card-text">
                        <div class="bd-card-title">Start Chat</div>
                        <div class="bd-card-sub">Get instant answers</div>
                    </div>
                </button>

                <div class="bd-sec-lbl">Popular Topics</div>
                <div class="bd-chips">
                    <button class="bd-chip" onclick="BW.qt('Course সম্পর্কে জানতে চাই')">Course</button>
                    <button class="bd-chip" onclick="BW.qt('ভর্তি হতে চাই')">Admission</button>
                </div>
            </div>

            <!-- FOOTER NAV — labels fixed, gap removed -->
            <div class="bd-nav-new">
                <!-- 1. Messenger -->
                <a href="https://m.me/1652435885033225" target="_blank" class="bd-nav-btn bd-msg">
                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                        stroke-linejoin="round">
                        <path
                            d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z">
                        </path>
                    </svg>
                    Messenger
                </a>
                <!-- 2. Success Stories -->
                <a href="#/success-student-advice" target="_blank" class="bd-nav-btn bd-story">
                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                        stroke-linejoin="round">
                        <polygon
                            points="12 2 15.09 8.26 22 9.27 17 14.14 18.18 21.02 12 17.77 5.82 21.02 7 14.14 2 9.27 8.91 8.26 12 2">
                        </polygon>
                    </svg>
                    Success Stories
                </a>
                <!-- 3. Free Study Room -->
                <a href="#/free-course" target="_blank" class="bd-nav-btn bd-contact">
                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                        stroke-linejoin="round">
                        <path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path>
                        <path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path>
                    </svg>
                    Free Study Room
                </a>
                <!-- 4. Job News -->
                <a href="#/job-circular" target="_blank" class="bd-nav-btn bd-job">
                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"
                        stroke-linejoin="round">
                        <rect x="2" y="7" width="20" height="14" rx="2" ry="2"></rect>
                        <path d="M16 21V5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v16"></path>
                    </svg>
                    Job News
                </a>
            </div>
        </div>

        <!-- CHAT VIEW -->
        <div class="bd-view" id="bd-vc">
            <div class="bd-topbar">
                <button class="bd-back" onclick="BW.tab('home')">
                    <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"
                        stroke-linecap="round">
                        <polyline points="15 18 9 12 15 6"></polyline>
                    </svg>
                    Back
                </button>
                <div style="font:600 12px/1 'Sora',sans-serif;color:#0c1a28;margin-left:auto;">UAC AI</div>
                <div
                    style="display:flex;align-items:center;gap:5px;font:400 11px/1 'Hind Siliguri',sans-serif;color:#22c55e;margin-left:10px;">
                    <span
                        style="width:7px;height:7px;border-radius:50%;background:#22c55e;display:inline-block;"></span>
                    Online
                </div>
            </div>
            <div class="bd-msgs" id="bd-msgs"></div>
            <div class="bd-qr" id="bd-qr"></div>
            <div class="bd-atag" id="bd-atag">
                <img id="bd-atag-thumb" class="bd-atag-thumb" src="" alt="preview">
                <div class="bd-atag-info">
                    <div class="bd-atag-name" id="bd-atxt">Image ready</div>
                    <div class="bd-atag-size" id="bd-atag-size">Tap send to attach</div>
                </div>
                <button class="bd-arm" onclick="BW.clrA()">✕</button>
            </div>
            <div class="bd-ibar">
                <div class="bd-ibar-in">
                    <textarea class="bd-ita" id="bd-ita" rows="1" placeholder="Type your message..."
                        onkeydown="BW.key(event)" oninput="BW.rsz(this);BW.chk()"></textarea>
                    <div class="bd-ibtns">
                        <button class="bd-ibtn" onclick="document.getElementById('bd-file').click()" title="Send Image">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor"
                                stroke-width="2" stroke-linecap="round">
                                <rect x="3" y="3" width="18" height="18" rx="2"></rect>
                                <circle cx="8.5" cy="8.5" r="1.5"></circle>
                                <polyline points="21,15 16,10 5,21"></polyline>
                            </svg>
                        </button>
                        <button class="bd-isend" id="bd-isend" onclick="BW.send()" disabled="">
                            <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="white"
                                stroke-width="2.5" stroke-linecap="round">
                                <line x1="22" y1="2" x2="11" y2="13"></line>
                                <polygon points="22,2 15,22 11,13 2,9"></polygon>
                            </svg>
                        </button>
                    </div>
                </div>
            </div>
            <input type="file" id="bd-file" accept="image/*" onchange="BW.img(this)">
        </div>
    </div>

    <script>
        (function () {
            var WURL = 'https://primary-production-2437.up.railway.app/webhook/695a2740-b148-4e48-b7bd-b04ac06ece0a/chat';
            var _open = false, _busy = false, _ready = false, _img = null;
            var _sid = 'bw-' + Math.random().toString(36).slice(2, 8) + '-' + Date.now();

            function g(id) { return document.getElementById(id); }
            function ts() { return new Date().toLocaleTimeString('en-US', { hour: '2-digit', minute: '2-digit', hour12: true }); }

            /* ─────────────────────────────────────────────────────────────
               fmt() — THE CORE FIX
               Converts [text](url) markdown links → real clickable <a> tags
               Order matters: links parsed BEFORE bold so URLs aren't broken
            ───────────────────────────────────────────────────────────── */
            function fmt(t) {
                // Strip LaTeX wrappers
                t = t.replace(/\$([^$\n]+)\$/g, '$1');
                t = t.replace(/\\frac\{([^}]+)\}\{([^}]+)\}/g, '($1/$2)');
                t = t.replace(/\\times/g, '×');
                t = t.replace(/\\boxed\{([^}]+)\}/g, '【$1】');
                // ✅ Markdown links → clickable anchor tags (MUST come before bold)
                t = t.replace(
                    /\[([^\]]+)\]\((https?:\/\/[^)]+)\)/g,
                    '<a href="$2" target="_blank" rel="noopener noreferrer">$1</a>'
                );
                // Bold
                t = t.replace(/\*\*(.+?)\*\*/g, '<strong>$1</strong>');
                // Newlines
                t = t.replace(/\n/g, '<br>');
                return t;
            }

            function addBot(txt, typing) {
                var c = g('bd-msgs'), r = document.createElement('div');
                r.className = 'bd-mrow';
                r.innerHTML =
                    '<div class="bd-mav">🎓</div>' +
                    '<div class="bd-mcol">' +
                    '<div class="bd-msndr">UAC AI</div>' +
                    (typing
                        ? '<div class="bd-tdots" id="bd-td"><span></span><span></span><span></span></div>'
                        : '<div class="bd-bub bd-b">' + fmt(txt) + '</div>'
                    ) +
                    '<div class="bd-mts">' + ts() + '</div>' +
                    '</div>';
                c.appendChild(r);
                c.scrollTop = c.scrollHeight;
                return r;
            }

            function addUser(txt, src) {
                var c = g('bd-msgs'), r = document.createElement('div');
                r.className = 'bd-mrow bd-u';
                var html = (src ? '<img src="' + src + '" style="max-width:160px;border-radius:10px;margin-bottom:4px;display:block">' : '')
                    + (txt ? '<div>' + txt.replace(/\n/g, '<br>') + '</div>' : '');
                r.innerHTML =
                    '<div class="bd-mcol">' +
                    '<div class="bd-msndr" style="text-align:right">You</div>' +
                    '<div class="bd-bub bd-u">' + html + '</div>' +
                    '<div class="bd-mts" style="text-align:right">' + ts() + '</div>' +
                    '</div>';
                c.appendChild(r);
                c.scrollTop = c.scrollHeight;
            }

            function showQR(items) {
                var qr = g('bd-qr'); qr.innerHTML = '';
                items.forEach(function (r) {
                    var b = document.createElement('button');
                    b.className = 'bd-qb'; b.textContent = r;
                    b.onclick = function () { qr.innerHTML = ''; doSend(r, null, null); };
                    qr.appendChild(b);
                });
            }

            function initChat() {
                _ready = true;
                g('bd-msgs').innerHTML = '';
                addBot('আমি UAC AI 👋\n\nকোর্স, পেমেন্ট, ভর্তি বা যেকোনো বিষয়ে জিজ্ঞেস করুন — এখনই উত্তর পাবেন।');
                showQR(['📚 Course দেখতে চাই', '✅ Admission']);
            }

            async function doSend(txt, b64, mime) {
                if (_busy) return;
                _busy = true;
                addUser(txt, b64 ? 'data:' + mime + ';base64,' + b64 : null);
                var tr = addBot('', true);
                g('bd-isend').disabled = true;
                try {
                    var p = { message: txt, sessionId: _sid, chatInput: txt };
                    if (b64) { p.imageBase64 = b64; p.imageMediaType = mime; }
                    var res = await fetch(WURL, { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify(p) });
                    var d = await res.json();
                    var rep = (typeof d === 'string' ? d : null)
                        || d.output || d.reply || d.message || d.text
                        || (Array.isArray(d) && d[0] && (d[0].output || d[0].text))
                        || 'দুঃখিত, একটু পরে আবার চেষ্টা করুন 🙏';
                    tr.remove();
                    addBot(rep);
                    showQR(['আরও বিস্তারিত বলুন', 'অন্য প্রশ্ন আছে']);
                } catch (e) {
                    tr.remove();
                    addBot('সংযোগে সমস্যা হচ্ছে। একটু পরে আবার চেষ্টা করুন 🙏');
                }
                _busy = false;
                g('bd-isend').disabled = !g('bd-ita').value.trim() && !_img;
            }

            window.BW = {
                toggle: function () {
                    _open = !_open;
                    g('bd-box').classList.toggle('bd-open', _open);
                    g('bd-fab').classList.toggle('bd-open', _open);
                    if (_open) g('bd-pip').style.display = 'none';
                },
                tab: function (t) {
                    if (t === 'home') {
                        g('bd-vh').classList.add('bd-on');
                        g('bd-vc').classList.remove('bd-on');
                    } else {
                        BW.openChat();
                    }
                },
                openChat: function () {
                    document.querySelectorAll('.bd-view').forEach(function (v) { v.classList.remove('bd-on'); });
                    g('bd-vc').classList.add('bd-on');
                    if (!_ready) initChat();
                    setTimeout(function () { var m = g('bd-msgs'); if (m) m.scrollTop = m.scrollHeight; }, 60);
                },
                qt: function (v) { BW.openChat(); setTimeout(function () { doSend(v, null, null); }, 150); },
                img: function (input) {
                    var f = input.files[0]; if (!f) return;
                    var r = new FileReader();
                    r.onload = function (e) {
                        _img = { b64: e.target.result.split(',')[1], mime: f.type };
                        // Show preview
                        var thumb = g('bd-atag-thumb');
                        var atag = g('bd-atag');
                        var atxt = g('bd-atxt');
                        var asz = g('bd-atag-size');
                        if (thumb) thumb.src = e.target.result;
                        if (atxt) atxt.textContent = f.name.length > 28 ? f.name.slice(0, 25) + '...' : f.name;
                        if (asz) asz.textContent = (f.size > 1024 * 1024 ? (f.size / 1024 / 1024).toFixed(1) + 'MB' : (f.size / 1024).toFixed(0) + 'KB') + ' · Ready to send';
                        if (atag) atag.classList.add('bd-show');
                        g('bd-isend').disabled = false;
                    };
                    r.readAsDataURL(f);
                    input.value = '';
                },
                clrA: function () {
                    _img = null;
                    var atag = g('bd-atag');
                    var thumb = g('bd-atag-thumb');
                    if (atag) atag.classList.remove('bd-show');
                    if (thumb) thumb.src = '';
                    BW.chk();
                },
                chk: function () { g('bd-isend').disabled = !g('bd-ita').value.trim() && !_img; },
                send: function () {
                    if (_busy) return;
                    var txt = g('bd-ita').value.trim(), im = _img;
                    if (!txt && !im) return;
                    g('bd-ita').value = '';
                    g('bd-ita').style.height = '';
                    g('bd-qr').innerHTML = '';
                    BW.clrA();
                    doSend(txt, im ? im.b64 : null, im ? im.mime : null);
                },
                key: function (e) { if (e.key === 'Enter' && !e.shiftKey) { e.preventDefault(); BW.send(); } },
                rsz: function (el) { el.style.height = 'auto'; el.style.height = Math.min(el.scrollHeight, 100) + 'px'; },
                openRandomWA: function () {
                    var rand = Math.floor(Math.random() * 5) + 801;
                    window.open('https://api.whatsapp.com/send?phone=8801896060' + rand, '_blank');
                }
            };
        })();
    </script>


    <!--====================================== END uac-bd.AI============================================= -->




</body>

</html>