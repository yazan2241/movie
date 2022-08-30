@extends('layouts.app')

@section('content')

<!-- =============== START OF SLIDER REVOLUTION SECTION =============== -->
<section id="slider" class="full-slider">
    <div class="rev-slider-wrapper fullscreen-container overlay-gradient">
        <div id="fullscreen-slider" class="rev_slider fullscreenbanner" style="display:none" data-version="5.4.1">

        </div>
    </div>
    <!-- ===== END OF REV SLIDER WRAPPER ===== -->


    <!-- ===== START OF SEARCH FORM WRAPPER ===== -->
    <div class="search-form-wrapper search-form-rev">
        <div class="container">

            <!-- ===== START OF SEARCH FORM ===== -->
            <form id="search-form-1" action="{{ route('search') }}">
                <div class="row justify-content-center">
                    <div class="col-md-8 col-sm-10 col-12">
                        <div class="form-group">
                            <input name="search" type="text" id="search-keyword" value="" class="form-control" placeholder="Enter Movies or Series Title">
                            <button type="submit" class="btn btn-main btn-effect"><i class="fa fa-search"></i></button>
                        </div>
                    </div>
                </div>
            </form>
            <!-- ===== END OF SEARCH FORM ===== -->

        </div>
    </div>
    <!-- ===== END OF SEARCH FORM WRAPPER ===== -->
</section>
<!-- =============== START OF SLIDER REVOLUTION SECTION =============== -->



@endsection