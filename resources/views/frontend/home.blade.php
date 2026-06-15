@extends('layouts.frontend.app')

@section('content')
     <!-- Navigation Bar for Small/Mobile Devices -->

    @include('layouts.frontend.partial.menubarMobile')



    <!-- Preloader -->



    <section class="row" id="Home_add" style="margin-top:10px;">
        <div class="col-lg-2" style="padding: calc(var(--bs-gutter-x)* .0); !important;">
            <div class="home-1st-add-image">
                <a href="#" target="_blank"><img
                        src="{{asset('frontend/images/home-page-bn-1-v13-eid.webp')}}" alt="Home 1st Add Banner" srcset="" loading="lazy"></a>
            </div>
        </div>
        <div class="col-lg-7 col-md-12" style="
           padding-left: calc(var(--bs-gutter-x) * 0.08) !important;
           padding-right: calc(var(--bs-gutter-x) * 0.08) !important;
           padding-top: 0 !important;
           padding-bottom: 0 !important;">
            <div class="home-2nd-add-image">
                <a href="#"><img src="{{asset('frontend/images/home-page-bn-2-v13-eid-v2.png')}}"
                        alt="Home 2nd Add Banner" srcset="" loading="lazy"></a>
            </div>
        </div>
        <div class="col-lg-3" style="padding: 0 !important;">
            <div class="home-3rd-add-image dropdown">
                <a href="#" class="dropdown-toggle" id="home3rdAddDropdown"
                    data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="{{asset('frontend/images/home-page-bn-3-v13-eid.webp')}}" alt="Home 3rd Add Banner" loading="lazy" srcset="">
                </a>
                
            </div>
        </div>
    </section>
 
    <main>
       
      <section id="Home_Our_courses" style="padding-top:0px;">
            <div class="container">
            
                <div class="all-courses-area">
                    <div class="row g-2 g-md-3 g-lg-4">
                         @foreach($premium_courses as $desk)
                        <div class="col-6 col-lg-3 mt-4">
                            <div class="exam-package-area">
                                <div class="package-exam-image">
                                    <a href="{{route('category.index',$desk->id)}}"><img
                                            src="{{asset($desk->image)}}" alt=""
                                            loading="lazy"></a>
                                </div>
                                <div class="package-exam-content mx-2 mx-lg-3">
                                    <div class="package-exam-title pt-3">
                                        <h2>
                                            <a href="#">{{$desk->name}}</a>
                                        </h2>
                                        <div class="package-exam-button">
                                                <div class="package-exam-details">
                                                   <a href="{{route('category.index',$desk->id)}}">View
                                                        Details </a>
                                                </div>
                                            </div>
                                    </div>
                                    
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>

                 

                

                  
                </div>
            </div>
        </section>


        <section id="Home_category" class="background-res background-ats py-5"
            style="background-image: url('frontend/images/home-page-category-bg-v5.webp')">
            <div class="container">
                <div class="row mb-5">
                    <div class="title-area text-center">
                        <h1 class="fw-bold custom-section-title">
                            <span>Emergency</span> Desk
                        </h1>
                    </div>
                </div>

                <div class="emergency-course-section d-flex justify-content-around flex-wrap">
                    @foreach($emergency_desk as $desk)
                    <a href="{{route('info.page',$desk->id)}}" class="emergency-box">
                        <img src="{{asset($desk->image)}}" alt="Free Studyroom" class="img-fluid">
                        <p class="pointer-cursor text-center text-uppercase">{{$desk->name}}</p>
                    </a>
                    @endforeach
                </div>

            </div>
        </section>

        <section id="Our_service" class="background-res background-ats py-4"
            style="background-image: url('frontend/images/main-category-bg-v5-eid.webp')">
            <div class="container-fluid py-3">
                <div class="row">
                    <div class="title-area text-center">
                        <h2 class="fw-bold mb-4 custom-section-title">Admitted Students Only<br></h2>

                    </div>
                </div>
                <div class="home-services-area">
                    <div class="row" style="--bs-gutter-x: 0.3rem; !important;">
                        @foreach($admitted_students as $admit)
                        <div class="col-md-3 col-6 mb-1 dropdown bcs-jobs" id="home-services-area-one">
                            <a href="{{route('info.page',$admit->id)}}">
                                <div class="my-home-service premium-course-box">
                                    <div class="my-home-service-icon">
                                        <img src="{{asset($admit->image)}}" alt="" loading="lazy">
                                    </div>
                                    <div class="my-home-service-content">
                                        <h3>{{$admit->name}}</h3>
                                    </div>
                                </div>
                            </a>
                        </div>
                        @endforeach
                        
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
                    @foreach($premium_courses as $category)
                        <div class="home-category-item" id="category-item-214">

                            <a href="{{route('category.index',$category->id)}}">
                                <div class="my-course-category">
                                    <div class="my-course-category-icon">
                                        <i class="fa-solid fa-book"></i>
                                    </div>
                                    <div class="my-course-category-content">
                                        <h3>{{$category->name}}</h3>

                                    </div>
                                </div>
                            </a>
                        </div>
                    @endforeach
                    </div>
                </div>
                
                <div class="all-courses-area">
                    <div class="row g-2 g-md-3 g-lg-4">
                        @foreach($products as $product)
                        <div class="col-6 col-lg-3 mt-4">
                            <div class="exam-package-area">
                                <div class="package-exam-image">
                                    <a href="{{route('product.details',$product->id)}}"><img
                                            src="{{asset($product->thumbnail)}}" alt=""
                                            loading="lazy"></a>
                                </div>
                                <div class="package-exam-content mx-2 mx-lg-3">
                                    <div class="package-exam-title pt-3">
                                        <h2>
                                            <a href="#">{{$product->name}}</a>
                                        </h2>
                                    </div>
                                    <div class="row button-and-price pb-3 pb-lg-4">
                                        <div class="col">
                                            <div class="package-exam-rating">
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="fas fa-star"></i>
                                                <i class="far fa-star"></i>
                                            </div>



                                            <div class="package-exam-price">

                                                <div class="package-exam-total-price text-muted">
                                                    <s class="text-muted">৳ {{$product->regular_price}}</s>
                                                </div>
                                                <div class="package-exam-discount-price">৳ {{$product->sale_price}}</div>
                                            </div>

                                        </div>
                                        <div class="col text-end">
                                            <div class="package-exam-button">
                                                <div class="package-exam-details">
                                                    <a
                                                        href="{{route('product.details',$product->id)}}">View
                                                        Details </a>
                                                </div>
                                                <a
                                                    href="{{route('auth.signupPage',$product->id)}}">
                                                    <div class="custom-btn btn-12">
                                                        <span>ক্লিক করুন!</span><span>বিস্তারিত</span>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                    </div>

                  
                </div>
            </div>
        </section>

 <section class="testimonials-section">
            <div class="container-fluid px-0">
                <!-- Stars row -->
                <div class="stars-row fade-up">
                    <svg width="22" height="22" viewBox="0 0 24 24">
                        <path
                            d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1 .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z">
                        </path>
                    </svg>
                    <svg width="22" height="22" viewBox="0 0 24 24">
                        <path
                            d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1 .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z">
                        </path>
                    </svg>
                    <svg width="22" height="22" viewBox="0 0 24 24">
                        <path
                            d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1 .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z">
                        </path>
                    </svg>
                    <svg width="22" height="22" viewBox="0 0 24 24">
                        <path
                            d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1 .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z">
                        </path>
                    </svg>
                    <svg width="22" height="22" viewBox="0 0 24 24">
                        <path
                            d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31 4.679a2.123 2.123 0 0 0 1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736 3.638a2.123 2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0 1-.771.56l-4.618-2.428a2.122 2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0 1-.77-.56l.881-5.139a2.122 2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1 .294-.906l5.165-.755a2.122 2.122 0 0 0 1.597-1.16z">
                        </path>
                    </svg>
                </div>

                <h2 class="section-heading fade-up d1 px-3">
                   কেন কলেজ ভর্তি কোচিংয়ে UAC ই সেরা?
                </h2>


                <div class="marquee-outer fade-up d2">
                    <div class="marquee-track" id="vidTrack" style="animation-play-state: paused;">
                          @foreach($vediocategories as $category)
                        <div class="vid-card" data-video-id="{{$category->url}}">
                            <div class="vid-thumb" onclick="playInlineVideo(this, '{{$category->url}}')">
                                <img src="{{asset($category->image)}}" alt="{{$category->name}}" loading="lazy">
                                <iframe class="inline-video-frame" src="" allowfullscreen=""
                                    allow="autoplay; encrypted-media"
                                    style="display:none; position:absolute; top:0; left:0; width:100%; height:100%; border:none; border-radius:20px;"></iframe>
                                <div class="play-btn">
                                    <svg width="52" height="52" viewBox="0 0 52 52" fill="none">
                                        <circle cx="26" cy="26" r="26" fill="rgba(137,24,26)"></circle>
                                        <polygon points="21,17 38,26 21,35" fill="white"></polygon>
                                    </svg>
                                </div>
                            </div>
                            <div class="card-person">
                                <div class="person-avatar">
                                    <img src="{{asset($category->image)}}" alt="{{$category->name}}">
                                </div>
                                <div>
                                    <div class="person-name">{{$category->name}}</div>
                                    <div class="person-loc">Video Gallery</div>
                                </div>
                            </div>
                        </div>
                        @endforeach
                        
                    </div>
                </div>

             

            </div>

            <!-- Video modal -->
            <div class="yt-overlay" id="ytModal" onclick="closeVideoModal(event)">
                <div class="yt-box">
                    <button class="yt-x" onclick="closeVideoModal(null,true)">✕</button>
                    <div class="yt-ratio"><iframe id="ytFrame" src="" allowfullscreen=""
                            allow="autoplay; encrypted-media"></iframe></div>
                </div>
            </div>

            <!-- Text modal -->
            <div class="txt-overlay" id="txtModal" onclick="closeTxtModal(event)">
                <div class="txt-box" onclick="event.stopPropagation()">
                    <button class="txt-x" onclick="closeTxtModal(null,true)">✕</button>
                    <p class="txt-body" id="txtBody"></p>
                    <div class="card-person" id="txtPerson"></div>
                </div>
            </div>
        </section>

<style>
.gallery-card{
    position:relative;
    overflow:hidden;
    border-radius:15px;
    cursor:pointer;
    box-shadow:0 8px 25px rgba(0,0,0,.12);
    transition:.3s;
}

.gallery-card:hover{
    transform:translateY(-6px);
}

.gallery-img{
    width:100%;
    height:250px;
    object-fit:cover;
}

.gallery-overlay{
    position:absolute;
    inset:0;
    background:rgba(0,0,0,.5);
    display:flex;
    align-items:center;
    justify-content:center;
    opacity:0;
    transition:.3s;
}

.gallery-card:hover .gallery-overlay{
    opacity:1;
}

.gallery-overlay i{
    color:#fff;
    font-size:30px;
}

/* MODAL */
#galleryModal .modal-content{
    background:transparent;
    border:none;
}

#galleryModal .modal-body{
    padding:0;
    overflow:hidden;
    text-align:center;
    cursor:grab;
}

#galleryModal .modal-body:active{
    cursor:grabbing;
}

#modalGalleryImage{
    max-width:none;
    max-height:90vh;
    user-select:none;
    transform:scale(1);
    transition:transform .1s ease;
    position:relative;
}

.gallery-close{
    position:absolute;
    top:15px;
    right:20px;
    font-size:40px;
    color:#fff;
    cursor:pointer;
    z-index:9999;
    font-weight:bold;
}
</style>


<section id="gallery-section" class="py-5 bg-light">
    <div class="container">

        <div class="row mb-5 text-center">
            <h2 class="fw-bold">Photo <span class="text-primary">Gallery</span></h2>
            <p class="text-muted">আমাদের কিছু কার্যক্রম</p>
        </div>

        <div class="row g-4">

            @foreach($galleries as $image)
            <div class="col-6 col-md-4 col-lg-3">

                <div class="gallery-card"
                     onclick="openGalleryModal('{{ asset($image->image) }}')">

                    <img src="{{ asset($image->image) }}"
                         class="gallery-img">

                    <div class="gallery-overlay">
                        <i class="fas fa-search-plus"></i>
                    </div>

                </div>

            </div>
            @endforeach
            

        </div>

    </div>
</section>


<!-- MODAL -->
<div class="modal fade" id="galleryModal" tabindex="-1">
    <div class="modal-dialog modal-xl modal-dialog-centered">
        <div class="modal-content">

            <span class="gallery-close" data-bs-dismiss="modal">&times;</span>

            <div class="modal-body">
                <img id="modalGalleryImage" src="">
            </div>

        </div>
    </div>
</div>


<script>
let scale = 1;
let posX = 0;
let posY = 0;
let isDragging = false;
let startX, startY;

function openGalleryModal(url){
    const img = document.getElementById('modalGalleryImage');

    img.src = url;

    scale = 1;
    posX = 0;
    posY = 0;

    updateTransform();

    new bootstrap.Modal(document.getElementById('galleryModal')).show();
}

function updateTransform(){
    const img = document.getElementById('modalGalleryImage');
    img.style.transform = `translate(${posX}px, ${posY}px) scale(${scale})`;
}

document.addEventListener('DOMContentLoaded', function(){

    const img = document.getElementById('modalGalleryImage');

    /* ZOOM */
    img.addEventListener('wheel', function(e){
        e.preventDefault();

        if(e.deltaY < 0){
            scale += 0.2;
        }else{
            scale -= 0.2;
        }

        if(scale < 1) scale = 1;
        if(scale > 5) scale = 5;

        updateTransform();
    });

    /* DRAG MOUSE */
    img.addEventListener('mousedown', function(e){
        isDragging = true;
        startX = e.clientX - posX;
        startY = e.clientY - posY;
    });

    document.addEventListener('mousemove', function(e){
        if(!isDragging) return;

        posX = e.clientX - startX;
        posY = e.clientY - startY;

        updateTransform();
    });

    document.addEventListener('mouseup', function(){
        isDragging = false;
    });

    /* TOUCH MOBILE */
    img.addEventListener('touchstart', function(e){
        isDragging = true;
        startX = e.touches[0].clientX - posX;
        startY = e.touches[0].clientY - posY;
    });

    img.addEventListener('touchmove', function(e){
        if(!isDragging) return;

        posX = e.touches[0].clientX - startX;
        posY = e.touches[0].clientY - startY;

        updateTransform();
    });

    img.addEventListener('touchend', function(){
        isDragging = false;
    });

});


/* RESET ON CLOSE */
document.getElementById('galleryModal')
.addEventListener('hidden.bs.modal', function(){

    scale = 1;
    posX = 0;
    posY = 0;

    updateTransform();
});
</script>


    </main>
    <!-- Modal -->
    <!-- <div class="modal fade" id="popupModal" data-bs-backdrop="static" data-modal-parent="courseContentModal">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                <div class="modal-body p-0">
                    <div class="card card-body p-0">
                        <img src="{{asset('frontend/images/popup.png')}}" alt="popup-img" class="popup-img"
                            style="height: 60%;" loading="lazy" srcset="">


                    </div>
                </div>
            </div>
        </div>
    </div> -->


    


    <section id="App_store" class="background-res background-ats py-5"
        style="background-image: url('frontend/images/footer-background-eid.webp')">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-5 col-lg-6">
                    <div class="style-2phone-image">
                        <a
                            href="https://play.google.com/store/apps/details?id=com.nextive.uac-bd.021&pcampaignid=web_share&pli=1"><img
                                src="{{asset('frontend/images/mobile-app-v3-pro.png')}}" class="img-fluid" alt="" srcset=""></a>
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
                                <h2>4.7 <span> <img src="{{asset('frontend/images/start.png')}}" class="img-fluid" alt=""></span></h2>
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
                                <img class="img-fluid" src="{{asset('frontend/images/app-store.png')}}" alt="App Store" srcset=""></a>
                        </div>
                        <div class="play-store">
                            <a href="https://play.google.com/store/apps/details?id=com.nextive.uac-bd.021">
                                <img class="img-fluid" src="{{asset('frontend/images/google-play.png')}}" alt="Google Play Store"
                                    srcset=""></a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
@endsection

