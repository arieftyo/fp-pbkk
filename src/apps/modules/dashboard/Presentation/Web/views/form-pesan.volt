<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Montana</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="{{url('assets/img/favicon.png') }}">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="{{url('assets/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{url('assets/css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{url('assets/css/magnific-popup.css') }}">
    <link rel="stylesheet" href="{{url('assets/css/font-awesome.min.css ') }}">
    <link rel="stylesheet" href="{{url('assets/css/themify-icons.css ') }}">
    <link rel="stylesheet" href="{{url('assets/css/nice-select.css') }}">
    <link rel="stylesheet" href="{{url('assets/css/flaticon.css') }}">
    <link rel="stylesheet" href="{{url('assets/css/gijgo.css') }}">
    <link rel="stylesheet" href="{{url('assets/css/animate.css') }}">
    <link rel="stylesheet" href="{{url('assets/css/slicknav.css') }}">
    <link rel="stylesheet" href="{{url('assets/css/style.css')}}">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <!-- header-start -->
    <header>
        <div class="header-area ">
            <div id="sticky-header" class="main-header-area">
                <div class="container-fluid p-0">
                    <div class="row align-items-center no-gutters">
                        <div class="col-xl-5 col-lg-6">
                            <div class="main-menu  d-none d-lg-block">
                                <nav>
                                    <ul id="navigation">
                                        <li><a class="active" href="{{url('/')}}">Home</a></li>
                                        <li><a href="rooms.html">Pesan Kamar</a></li>
                                        <li><a href="about.html">Hotel Saya</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-7 col-lg-6 d-none d-lg-block">
                            <div class="book_room">
                                <div class="book_btn d-none d-lg-block">
                                    <a class="popup-with-form" href="{{url('/login')}}">Login/Register</a>
                                </div>
                                <div class="book_btn d-none d-lg-block">
                                    <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Cari Kamar</button>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header-end -->

    <!-- slider_area_start -->
    <div class="slider_area">
        <div class="slider_active owl-carousel">
            <div class="single_slider d-flex align-items-center justify-content-center slider_bg_1">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="slider_text text-center">
                                <h3>Montana Resort</h3>
                                <p>Unlock to enjoy the view of Martine</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single_slider  d-flex align-items-center justify-content-center slider_bg_2">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="slider_text text-center">
                                <h3>Life is Beautiful</h3>
                                <p>Unlock to enjoy the view of Martine</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single_slider d-flex align-items-center justify-content-center slider_bg_1">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="slider_text text-center">
                                <h3>Montana Resort</h3>
                                <p>Unlock to enjoy the view of Martine</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single_slider  d-flex align-items-center justify-content-center slider_bg_2">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="slider_text text-center">
                                <h3>Life is Beautiful</h3>
                                <p>Unlock to enjoy the view of Martine</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider_area_end -->

    <!-- about_area_start -->
    <!-- form itself end-->
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-lg">
        
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-body">
                <div class="popup_box ">
                        <div class="popup_inner">
                            <h3>Check Availability</h3>
                            <form action="#">
                                <div class="row">
                                    <div class="col-xl-6">
                                        <label for="kota">Kota</label>
                                        <select name="kota" class="form-select wide" id="default-select" class="">
                                            <option data-display="kota">Surabaya</option>
                                            <option value="1">Sidoarjo</option>
                                            <option value="2">Malang</option>
                                            <option value="3">Lumajang</option>
                                        </select>
                                    </div>
                                    <div class="col-xl-6">
                                        <label for="datepicker">Check-in</label>
                                        <input id="datepicker" placeholder="Check in date">
                                    </div>
                                    <div class="col-xl-6">
                                        <label for="datepicker2">Check-out</label>
                                        <input id="datepicker2" placeholder="Check out date">
                                    </div>
                                    <div class="col-xl-6">
                                        <label for="Room">Room</label>
                                        <select class="form-select wide" id="default-select" class="">
                                            <option data-display="Room">1</option>
                                            <option value="1">2</option>
                                            <option value="2">3</option>
                                            <option value="3">4</option>
                                        </select>
                                    </div>
                                    <div class="col-xl-6">
                                        <label for="Person">Person</label>
                                        <select class="form-select wide" id="default-select" class="">
                                            <option data-display="Person">1</option>
                                            <option value="1">2</option>
                                            <option value="2">3</option>
                                            <option value="3">4</option>
                                        </select>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit"  class="btn btn-success" >Check Availability</button>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                 </div>
            </div> 
        </div>
      </div>
    
    <!-- about_area_end -->

    <!-- offers_area_start -->
    <div class="offers_area">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="section_title text-center mb-100">
                        <span>Our Offers</span>
                        <h3>Ongoing Offers</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-4 col-md-4">
                    <div class="single_offers">
                        <div class="about_thumb">
                            <img src="{{url('assets/img/offers/1.png')}}" alt="">
                        </div>
                        <h3>Up to 35% savings on Club <br>
                            rooms and Suites</h3>
                        <ul>
                            <li>Luxaries condition</li>
                            <li>3 Adults & 2 Children size</li>
                            <li>Sea view side</li>
                        </ul>
                        <a href="#" class="book_now">book now</a>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4">
                    <div class="single_offers">
                        <div class="about_thumb">
                            <img src="{{url('assets/img/offers/2.png')}}" alt="">
                        </div>
                        <h3>Up to 35% savings on Club <br>
                            rooms and Suites</h3>
                        <ul>
                            <li>Luxaries condition</li>
                            <li>3 Adults & 2 Children size</li>
                            <li>Sea view side</li>
                        </ul>
                        <a href="#" class="book_now">book now</a>
                    </div>
                </div>
                <div class="col-xl-4 col-md-4">
                    <div class="single_offers">
                        <div class="about_thumb">
                            <img src="{{url('assets/img/offers/3.png')}}" alt="">
                        </div>
                        <h3>Up to 35% savings on Club <br>
                            rooms and Suites</h3>
                        <ul>
                            <li>Luxaries condition</li>
                            <li>3 Adults & 2 Children size</li>
                            <li>Sea view side</li>
                        </ul>
                        <a href="#" class="book_now">book now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- offers_area_end -->

    <!-- video_area_start -->
    <div class="video_area video_bg overlay">
        <div class="video_area_inner text-center">
            <span>Montana Sea View</span>
            <h3>Relax and Enjoy your <br>
                Vacation </h3>
            <a href="https://www.youtube.com/watch?v=vLnPwxZdW4Y" class="video_btn popup-video">
                <i class="fa fa-play"></i>
            </a>
        </div>
    </div>
    <!-- video_area_end -->

    <!-- about_area_start -->
    <div class="about_area">
        <div class="container">
            <div class="row">
                <div class="col-xl-7 col-lg-7">
                    <div class="about_thumb2 d-flex">
                        <div class="img_1">
                            <img src="{{url('assets/img/about/1.png')}}" alt="">
                        </div>
                        <div class="img_2">
                            <img src="{{url('assets/img/about/2.png')}}" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-xl-5 col-lg-5">
                    <div class="about_info">
                        <div class="section_title mb-20px">
                            <span>Delicious Food</span>
                            <h3>We Serve Fresh and <br>
                                Delicious Food</h3>
                        </div>
                        <p>Suscipit libero pretium nullam potenti. Interdum, blandit phasellus consectetuer dolor ornare
                            dapibus enim ut tincidunt rhoncus tellus sollicitudin pede nam maecenas, dolor sem. Neque
                            sollicitudin enim. Dapibus lorem feugiat facilisi faucibus et. Rhoncus.</p>
                        <a href="#" class="line-button">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- about_area_end -->

    <!-- features_room_startt -->
    <!-- features_room_end -->

    <!-- forQuery_start -->
    <!-- forQuery_end-->

    <!-- instragram_area_start -->
    <div class="instragram_area">
        <div class="single_instagram">
            <img src="img/instragram/1.png" alt="">
            <div class="ovrelay">
                <a href="#">
                    <i class="fa fa-instagram"></i>
                </a>
            </div>
        </div>
        <div class="single_instagram">
            <img src="img/instragram/2.png" alt="">
            <div class="ovrelay">
                <a href="#">
                    <i class="fa fa-instagram"></i>
                </a>
            </div>
        </div>
        <div class="single_instagram">
            <img src="img/instragram/3.png" alt="">
            <div class="ovrelay">
                <a href="#">
                    <i class="fa fa-instagram"></i>
                </a>
            </div>
        </div>
        <div class="single_instagram">
            <img src="img/instragram/4.png" alt="">
            <div class="ovrelay">
                <a href="#">
                    <i class="fa fa-instagram"></i>
                </a>
            </div>
        </div>
        <div class="single_instagram">
            <img src="img/instragram/5.png" alt="">
            <div class="ovrelay">
                <a href="#">
                    <i class="fa fa-instagram"></i>
                </a>
            </div>
        </div>
    </div>
    <!-- instragram_area_end -->

    <!-- footer -->
    <footer class="footer">
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-md-6 col-lg-3">
                        <div class="footer_widget">
                            <h3 class="footer_title">
                                address
                            </h3>
                            <p class="footer_text"> 200, Green road, Mongla, <br>
                                New Yor City USA</p>
                            <a href="#" class="line-button">Get Direction</a>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 col-lg-3">
                        <div class="footer_widget">
                            <h3 class="footer_title">
                                Reservation
                            </h3>
                            <p class="footer_text">+10 367 267 2678 <br>
                                reservation@montana.com</p>
                        </div>
                    </div>
                    <div class="col-xl-2 col-md-6 col-lg-2">
                        <div class="footer_widget">
                            <h3 class="footer_title">
                                Navigation
                            </h3>
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Rooms</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">News</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-6 col-lg-4">
                        <div class="footer_widget">
                            <h3 class="footer_title">
                                Newsletter
                            </h3>
                            <form action="#" class="newsletter_form">
                                <input type="text" placeholder="Enter your mail">
                                <button type="submit">Sign Up</button>
                            </form>
                            <p class="newsletter_text">Subscribe newsletter to get updates</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy-right_text">
            <div class="container">
                <div class="footer_border"></div>
                <div class="row">
                    <div class="col-xl-8 col-md-7 col-lg-9">
                        <p class="copy_right">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                    <div class="col-xl-4 col-md-5 col-lg-3">
                        <div class="socail_links">
                            <ul>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-facebook-square"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-instagram"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- link that opens popup -->

    
    <!-- form itself end -->

    <!-- JS here -->
    <script src="{{url('assets/js/vendor/modernizr-3.5.0.min.js')}}"></script>
    <script src="{{url('assets/js/vendor/jquery-1.12.4.min.js')}}"></script>
    <script src="{{url('assets/js/popper.min.js')}}"></script>
    <script src="{{url('assets/js/bootstrap.min.js')}}"></script>
    <script src="{{url('assets/js/owl.carousel.min.js')}}"></script>
    <script src="{{url('assets/js/isotope.pkgd.min.js')}}"></script>
    <script src="{{url('assets/js/ajax-form.js')}}"></script>
    <script src="{{url('assets/js/waypoints.min.js')}}"></script>
    <script src="{{url('assets/js/jquery.counterup.min.js')}}"></script>
    <script src="{{url('assets/js/imagesloaded.pkgd.min.js')}}"></script>
    <script src="{{url('assetsjs/scrollIt.js')}}"></script>
    <script src="{{url('assets/js/jquery.scrollUp.min.js')}}"></script>
    <script src="{{url('assets/js/wow.min.js')}}"></script>
    <script src="{{url('assets/js/nice-select.min.js')}}"></script>
    <script src="{{url('assets/js/jquery.slicknav.min.js')}}"></script>
    <script src="{{url('assets/js/jquery.magnific-popup.min.js')}}"></script>
    <script src="{{url('assets/js/plugins.js')}}"></script>
    <script src="{{url('assets/js/gijgo.min.js')}}"></script>

    <!--contact js-->
    <script src="{{url('assets/js/contact.js') }}"></script>
    <script src="{{url('assets/js/jquery.ajaxchimp.min.js')}}"></script>
    <script src="{{url('assets/js/jquery.form.js') }}"></script>
    <script src="{{url('assets/js/jquery.validate.min.js')}}"></script>
    <script src="{{url('assets/js/mail-script.js')}}"></script>
    <script src="{{url('assets/js/main.js')}}"></script>
    <script>
        $('#datepicker').datepicker({
            iconsLibrary: 'fontawesome',
            icons: {
             rightIcon: '<span class="fa fa-caret-down"></span>'
         }
        });
        $('#datepicker2').datepicker({
            iconsLibrary: 'fontawesome',
            icons: {
             rightIcon: '<span class="fa fa-caret-down"></span>'
         }
        });
    </script>

</body>

</html>