@extends('layouts.app')

@section('content')
<!-- =============== START OF PAGE HEADER =============== -->
<section class="page-header overlay-gradient" style="background: url(assets/images/posters/movie-collection.jpg);">
    <!-- <div class="container">
                <div class="inner text-center">
                    <h2 class="title">Movie Grid 1</h2>
                </div>
            </div> -->
</section>
<!-- =============== END OF PAGE HEADER =============== -->



<!-- =============== START OF MAIN =============== -->
<main class="ptb100">
    <div class="container">

        <!-- Start of Filters -->
        <div class="row mb50">

            <div class="col-md-6">
                <!-- Layout Switcher -->
                <div class="layout-switcher">
                    <!-- <a href="movie-list.html" class="list"><i class="fa fa-align-justify"></i></a> -->
                    <a href="{{ route('search') }}" class="grid active"><i class="fa fa-th"></i></a>
                </div>
            </div>
        </div>
        <!-- End of Filters -->



        <!-- Start of Movie List -->
        <div class="row">

            <!-- Movie List Item -->
            @foreach ($result as $movie)
            <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="movie-box-2 mb30">
                    <div class="listing-container">
                        <!-- Movie List Image -->
                        <div class="listing-image">

                            <!-- Play Button -->
                            <div class="play-btn">
                                <a href="{{ $movie->trailer }}" class="play-video">
                                    <i class="fa fa-play"></i>
                                </a>
                            </div>

                            <!-- Buttons -->
                            <div class="buttons">
                                <a href="#" data-original-title="Rate" data-toggle="tooltip" data-placement="bottom" class="like">
                                    <i class="icon-heart"></i>
                                </a>

                                <a href="#" data-original-title="Share" data-toggle="tooltip" data-placement="bottom" class="share">
                                    <i class="icon-share"></i>
                                </a>
                            </div>

                            <!-- Rating -->
                            <div class="stars">
                                <div class="rating">
                                    @for ($i = 0 ; $i < 5 ; $i++)
                                        @if ($i < $movie->rate)
                                            <i class="fa fa-star"></i>
                                        @else
                                            <i class="fa fa-star-o"></i>
                                        @endif
                                    @endfor
                                </div>
                            </div>

                            <!-- Image -->
                            <img src="{{ $movie->poster }}" style="height: 250px;" alt="">
                        </div>

                        <!-- Movie List Content -->
                        <div class="listing-content">
                            <div class="inner">
                                <h2 class="title">{{ $movie->title }}</h2>

                                <p>{{ $movie->story }}</p>

                                <a href="{{ route('movie' , $movie->id )  }}" class="btn btn-main btn-effect">details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
        <!-- End of Movie List -->

        <!-- Start of Pagination -->
        <div class="text-center">
            {{ $result->withQueryString()->links('pagination::bootstrap-4') }}
        </div>
        <!-- <div class="row">
            <div class="col-md-12 col-sm-12">
                <nav class="pagination">
                    <!-- <ul>
                        <li><a href="#" class="current-page">1</a></li>
                        <li><a href="#"><i class="ti-angle-right"></i></a></li>
                    </ul> -->
                </nav>
            </div>
        </div> -->
        <!-- End of Pagination -->

    </div>
</main>
<!-- =============== END OF MAIN =============== -->



@endsection