@extends('layouts.app')

@section('content')
<h3>Upload a video</h3>
<hr>
<form method="POST" action="/uploadvideo" enctype="multipart/form-data">
    {{ csrf_field() }}
    <div>
        <label>Choose Video</label>
        <input type="file" name="video">
    </div>
    <hr>
    <button type="submit">Submit</button>
</form>
@endsection