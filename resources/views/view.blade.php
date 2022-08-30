@extends('layouts.app')

@section('content')
<!-- =============== START OF MOVIE DETAIL INTRO =============== -->

<section class="movie-detail-intro overlay-gradient ptb100" style="background: url(assets/images/other/movie-detail-bg.jpg);">
    <div class="container">
        
        <div class="movie-details">
            <h3 class="title">{{ $movie->title }}</h3>

            <ul class="movie-subtext">
                <li>PG-13</li>
                <li>{{ $movie->duration }}</li>
                <li>{{ $movie->type }}</li>
                <li>{{ $movie->created_at }}</li>
            </ul>



            <div class="rating mt10">
                @for ($i = 0 ; $i < 5 ; $i++)
                    @if ($i < $movie->rate)
                    <i class="fa fa-star"></i>
                    @else
                    <i class="fa fa-star-o"></i>
                    @endif
                @endfor
                <span>296 Ratings</span>
            </div>
        </div>

        <a href="" class="play-video">
            <i class="fa fa-play"></i>
        </a>

    </div>
</section>
<!-- =============== END OF MOVIE DETAIL INTRO =============== -->



<!-- =============== START OF DOWNLOAD AND WATCH SECTION =============== -->
<div class="container">
    <table class="table table-striped my-5">
        <thead>
            <tr>
                <th class="text-center" scope="col">التحميل</th>
                <th class="text-center" scope="col">الحجم</th>
                <th class="text-center" scope="col">الدقة</th>
                <th class="text-center" scope="col">الجودة</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td class="text-center">
                    <a href="{{ route('viewmovie' , [$movie->id,4]) }}" class="btn btn-primary px-2"><i class="fa-regular fa-circle-play px-1"></i>مشاهدة</a>
                    <button class="btn btn-success m-2 px-2"><i class="fa-solid fa-circle-arrow-down px-1"></i>تحميل</button>
                </td>
                <td>None</td>
                <td>Full HD 1080p </td>
                <td>WEB-DL</td>
            </tr>
            <tr>
                <td class="text-center">
                    <a href="{{ route('viewmovie' , [$movie->id,3]) }}" class="btn btn-primary px-2"><i class="fa-regular fa-circle-play px-1"></i>مشاهدة</a>
                    <button class="btn btn-success m-2 px-2"><i class="fa-solid fa-circle-arrow-down px-1"></i>تحميل</button>
                </td>
                <td>None</td>
                <td>Full HD 720 </td>
                <td>WEB-DL</td>
            </tr>
            <tr>
                <td class="text-center">
                    <a href="{{ route('viewmovie' , [$movie->id,2]) }}" class="btn btn-primary px-2"><i class="fa-regular fa-circle-play px-1"></i>مشاهدة</a>
                    <button class="btn btn-success m-2 px-2"><i class="fa-solid fa-circle-arrow-down px-1"></i>تحميل</button>
                </td>
                <td>None</td>
                <td>Full HD 480 </td>
                <td>WEB-DL</td>
            </tr>
            <tr>
                <td class="text-center">
                    <a href="{{ route('viewmovie' , [$movie->id,1]) }}" class="btn btn-primary px-2"><i class="fa-regular fa-circle-play px-1"></i>مشاهدة</a>
                    <button class="btn btn-success m-2 px-2"><i class="fa-solid fa-circle-arrow-down px-1"></i>تحميل</button>
                </td>
                <td>None</td>
                <td>Full HD 360 </td>
                <td>WEB-DL</td>
            </tr>
            <tr>
                <td class="text-center">
                    <a href="{{ route('viewmovie' , [$movie->id,0]) }}" class="btn btn-primary px-2"><i class="fa-regular fa-circle-play px-1"></i>مشاهدة</a>
                    <button class="btn btn-success m-2 px-2"><i class="fa-solid fa-circle-arrow-down px-1"></i>تحميل</button>
                </td>
                <td>None</td>
                <td>Full HD 240 </td>
                <td>WEB-DL</td>
            </tr>
        </tbody>
    </table>
</div>

<!-- =============== END OF DOWNLOAD AND WATCH SECTION =============== -->

@endsection