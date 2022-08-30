@extends('layouts.app')

@section('content')

<form action="{{ route('addmovie') }}" method="POST">
    @csrf
    <div class="form-group">
        <label>title</label>
        <input class="form-control" name="title"/>
    </div>

    <div class="form-group">
        <label>language</label>
        <input class="form-control" name="language"/>
    </div>
    <div class="form-group">
        <label>category</label>
        <input class="form-control" name="category" />
    </div>
    <div class="form-group">
        <label>type</label>
        <input class="form-control" name="type" />
    </div>
    <div class="form-group">
        <label>rate</label>
        <input class="form-control" name="rate" />
    </div>
    <div class="form-group">
        <label>duration</label>
        <input class="form-control" name="duration" />
    </div>
    <div class="form-group">
        <label>quality</label>
        <input class="form-control" name="quality" />
    </div>
    <div class="form-group">
        <label>watch</label>
        <input class="form-control" name="watch"/>
    </div>
    <div class="form-group">
        <label>view</label>
        <input class="form-control" name="view"/>
    </div>
    <div class="text-center">
        <input type="submit" value="submit" class="btn btn-primary" />
    </div>
</form>

@endsection