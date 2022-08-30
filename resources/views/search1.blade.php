@extends('layouts.app')

@section('content')


@foreach ($result as $movie)

<a href="/movie/{{ $movie->id }}">{{$movie->title}}</a>


@endforeach

    {{ $result->withQueryString()->links('pagination::bootstrap-4') }}

@endsection