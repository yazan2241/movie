<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8">

    <!-- ===== Mobile viewport optimized ===== -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=no">

    <!-- ===== Meta Tags - Description for Search Engine purposes ===== -->
    <meta name="description" content="Movies, Series & Cinema Website">
    <meta name="keywords" content="movies, series, online streaming">
    <meta name="author" content="HYTeam">

    <!-- ===== Website Title ===== -->
    <title>Movies, Series & Cinema Website</title>

    <!-- ===== Favicon & Different size apple touch icons ===== -->
    <link rel="shortcut icon" href="{{ url('assets/images/favicon.png') }}" type="image/x-icon">
    <link rel="apple-touch-icon" sizes="57x57" href="{{ url('assets/images/apple-touch-icon-iphone.png') }}">
    <link rel="apple-touch-icon" sizes="76x76" href="{{ url('assets/images/apple-touch-icon-ipad.png') }}">
    <link rel="apple-touch-icon" sizes="120x120" href="{{ url('assets/images/apple-touch-icon-iphone-retina.png') }}">
    <link rel="apple-touch-icon" sizes="152x152" href="{{ url('assets/images/apple-touch-icon-ipad-retina.png') }}">
    <link rel="apple-touch-icon" sizes="167x167" href="{{ url('assets/images/apple-touch-icon-ipad-pro.png') }}">
    <link rel="apple-touch-icon" sizes="180x180" href="{{ url('assets/images/apple-touch-icon-iphone-6-plus.png') }}">
    <link rel="icon" sizes="192x192" href="{{ url('assets/images/icon-hd.png') }}">
    <link rel="icon" sizes="128x128" href="{{ url('assets/images/icon.png') }}">

    <!-- ===== Google Fonts ===== -->
    <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">

    <!-- ===== CSS links ===== -->
    <link rel="stylesheet" type="text/css" href="{{ url('assets/css/bootstrap.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('assets/revolution/css/settings.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('assets/revolution/css/layers.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('assets/revolution/css/navigation.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('assets/css/magnific-popup.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('assets/css/jquery.mmenu.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('assets/css/owl.carousel.min.css') }}">

    <link rel="stylesheet" type="text/css" href="{{ url('assets/css/style.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ url('assets/css/responsive.css') }}">

</head>

<body>
    <div id="app">
        <!-- =============== START OF PRELOADER =============== -->
        <div class="loading">
            <div class="loading-inner">
                <div class="loading-effect">
                    <div class="object"></div>
                </div>
            </div>
        </div>
        <!-- =============== END OF PRELOADER =============== -->

        <!-- =============== START OF RESPONSIVE - MAIN NAV =============== -->
        <nav id="main-mobile-nav"></nav>
        <!-- =============== END OF RESPONSIVE - MAIN NAV =============== -->

        <!-- =============== START OF WRAPPER =============== -->
        <div class="wrapper">


            <!-- =============== START OF HEADER NAVIGATION =============== -->
            <!-- Insert the class "sticky" in the header if you want a sticky header -->
            <header class="header header-fixed header-transparent text-white">
                <div class="container-fluid">

                    <!-- ====== Start of Navbar ====== -->
                    <nav class="navbar navbar-expand-lg">

                        <a class="navbar-brand" href="index.html">
                            <!-- INSERT YOUR LOGO HERE -->
                            <img src="{{ url('assets/images/logo.svg') }}" alt="logo" width="150" class="logo">
                            <!-- INSERT YOUR WHITE LOGO HERE -->
                            <img src="{{ url('assets/images/logo-white.svg') }}" alt="white logo" width="150" class="logo-white">
                        </a>

                    </nav>
                    <!-- ====== End of Navbar ====== -->

                </div>
            </header>
            <!-- =============== END OF HEADER NAVIGATION =============== -->
            <div style="min-height: 100vh;">
                @yield('content')
            </div>

            <!-- =============== START OF FOOTER =============== -->
            <footer class="footer1 bg-dark">
                <!-- ===== START OF FOOTER COPYRIGHT AREA ===== -->
                <div class="footer-copyright-area ptb30">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="d-flex">
                                    <div class="copyright ml-auto">All Rights Reserved by <a href="#">HYTeam</a>.</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- ===== END OF FOOTER COPYRIGHT AREA ===== -->

            </footer>
            <!-- =============== END OF FOOTER =============== -->

        </div>
        <!-- =============== END OF WRAPPER =============== -->




        <!-- =============== START OF GENERAL SEARCH WRAPPER =============== -->
        <div class="general-search-wrapper">
            <form class="general-search" role="search" method="get" action="#">
                <input type="text" placeholder="Type and hit enter...">
                <span id="general-search-close" class="ti-close toggle-search"></span>
            </form>
        </div>
        <!-- =============== END OF GENERAL SEARCH WRAPPER =============== -->


        <!-- ===== Start of Back to Top Button ===== -->
        <div id="backtotop">
            <a href="#"></a>
        </div>
        <!-- ===== End of Back to Top Button ===== -->


    </div>



    <script src="{{ url('assets/js/jquery-3.2.1.min.js') }}"></script>
    <script src="{{ url('assets/js/bootstrap.min.js') }}"></script>
    <script src="{{ url('assets/js/jquery.ajaxchimp.js') }}"></script>
    <script src="{{ url('assets/js/jquery.magnific-popup.min.js') }}"></script>
    <script src="{{ url('assets/js/jquery.mmenu.js') }}"></script>
    <script src="{{ url('assets/js/jquery.inview.min.js') }}"></script>
    <script src="{{ url('assets/js/jquery.countTo.min.js') }}"></script>
    <script src="{{ url('assets/js/jquery.countdown.min.js') }}"></script>
    <script src="{{ url('assets/js/owl.carousel.min.js') }}"></script>
    <script src="{{ url('assets/js/imagesloaded.pkgd.min.js') }}"></script>
    <script src="{{ url('assets/js/isotope.pkgd.min.js') }}"></script>
    <script src="{{ url('assets/js/headroom.js') }}"></script>
    <script src="{{ url('assets/js/custom.js') }}"></script>

    <!-- ===== Slider Revolution core JavaScript files ===== -->
    <script type="text/javascript" src="{{ url('assets/revolution/js/jquery.themepunch.tools.min.js') }}"></script>
    <script type="text/javascript" src="{{ url('assets/revolution/js/jquery.themepunch.revolution.min.js') }}"></script>

    <!-- ===== Slider Revolution extension scripts ===== -->
    <script type="text/javascript" src="{{ url('assets/revolution/js/extensions/revolution.extension.actions.min.js') }}"></script>
    <script type="text/javascript" src="{{ url('assets/revolution/js/extensions/revolution.extension.carousel.min.js') }}"></script>
    <script type="text/javascript" src="{{ url('assets/revolution/js/extensions/revolution.extension.kenburn.min.js') }}"></script>
    <script type="text/javascript" src="{{ url('assets/revolution/js/extensions/revolution.extension.layeranimation.min.js') }}"></script>
    <script type="text/javascript" src="{{ url('assets/revolution/js/extensions/revolution.extension.migration.min.js') }}"></script>
    <script type="text/javascript" src="{{ url('assets/revolution/js/extensions/revolution.extension.navigation.min.js') }}"></script>
    <script type="text/javascript" src="{{ url('assets/revolution/js/extensions/revolution.extension.parallax.min.js') }}"></script>
    <script type="text/javascript" src="{{ url('assets/revolution/js/extensions/revolution.extension.slideanims.min.js') }}"></script>
    <script type="text/javascript" src="{{ url('assets/revolution/js/extensions/revolution.extension.video.min.js') }}"></script>


</body>

</html>