@extends('layouts.app')

@section('content')

<div>

   <video controls src="{{ $res }}" style="width: 100%; height: 600px;"></video>
<div class="text-center mt-3 mb-3">
   <a href="{{ route('movie' , $id) }}" style="width: 200px;" class="btn btn-primary">Go Back</a>
</div>
</div>

@endsection