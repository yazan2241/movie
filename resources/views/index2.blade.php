@extends('layouts.app')

@section('content')

<form action="search" method="get">
    <input id="search" name="search" type="text" value="" class="form-control" />
    <input class="btn btn-primary" value="submit" type="submit" />
</form>

@endsection