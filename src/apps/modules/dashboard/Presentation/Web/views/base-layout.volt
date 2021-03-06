<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title> {% block title %}{% endblock %}</title>
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
                                        <li><a href="{{url("pemesanan/pesananSaya/"~ auth['id'])}}">Pemesanan Saya</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-xl-7 col-lg-6 d-none d-lg-block">
                            <div class="book_room">
                                {% if(auth) %}
                                <div class="book_btn d-none d-lg-block">
                                    <a class="popup-with-form" href="{{url('/login')}}">Hi, {{auth['nama']}}</a>
                                </div>
                                {% else %}
                                <div class="book_btn d-none d-lg-block">
                                    <a class="popup-with-form" href="{{url('/login')}}">Login/Register</a>
                                </div>
                                {% endif %}
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
    <div class="modal fade" id="myModal" role="dialog">
        <div class="modal-dialog modal-lg">
        
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-body">
                <div class="popup_box ">
                        <div class="popup_inner">
                            <h3>Check Availability</h3>
                            <form method="POST" action="{{ url('/searchHotel') }}">
                                <div class="row">
                                    <div class="col-xl-6">
                                        <label for="kota">Kota</label>
                                        <select name="kota" class="form-select wide" id="kota" class="">
                                            <option value="surabaya">Surabaya</option>
                                            <option value="sidoarjo">Sidoarjo</option>
                                            <option value="malang">Malang</option>
                                            <option value="lumajang">Lumajang</option>
                                        </select>
                                    </div>
                                    <div class="col-xl-6">
                                        <label for="datepicker">Check-in</label>
                                        <input name="checkin" id="datepicker" placeholder="Check in date">
                                    </div>
                                    <div class="col-xl-6">
                                        <label for="datepicker2">Check-out</label>
                                        <input name="checkout" id="datepicker2" placeholder="Check out date">
                                    </div>
                                    <div class="col-xl-6">
                                        <label for="Room">Room</label>
                                        <select name="room" class="form-select wide" id="room" class="">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                        </select>
                                    </div>
                                    <div class="col-xl-6">
                                        <label for="Person">Person</label>
                                        <select name="person" class="form-select wide" id="person" class="">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
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
    
    {% block bradcam_area %}{% endblock %}
    {% block content %}{% endblock %}
   
    <!-- slider_area_start -->
    <!-- slider_area_end -->

    <!-- about_area_start -->
    <!-- form itself end-->
   
    
    <!-- about_area_end -->

    <!-- offers_area_start -->
   

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