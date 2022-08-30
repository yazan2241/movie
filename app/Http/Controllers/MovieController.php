<?php

namespace App\Http\Controllers;

use App\Models\Movie;
use Illuminate\Http\Request;

class MovieController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $movie = new Movie($request->all());
        $movie->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Movie  $movie
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        $id = $request->id;

        $movie = Movie::where('id' , $id)->first();

        return view('view' , ['movie' => $movie]);
    }

    public function viewmovie(Request $request)
    {
        $id = $request->id;
        $link = $request->link;

        $movie = Movie::where('id' , $id)->first();
        $res = $movie->xxlarge;
        if ($link == 0) $res = $movie->low;
        else if($link == 1)$res = $movie->medium;
        else if($link == 2)$res = $movie->large;
        else if($link == 3)$res = $movie->xlarge;
        else if($link == 4)$res = $movie->xxlarge;

        return view('viewmovie' , ['res' => $res , 'id' => $id]);
    }
    
    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Movie  $movie
     * @return \Illuminate\Http\Response
     */
    public function edit(Movie $movie)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Movie  $movie
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Movie $movie)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Movie  $movie
     * @return \Illuminate\Http\Response
     */
    public function destroy(Movie $movie)
    {
        //
    }

    public function search(Request $request){
        $search = $request->input('search');

        $result = Movie::where('title' , 'Like' , '%'.$search.'%')->orderBy("id" , "desc")->paginate(6);

        return view('search' , ['result'  => $result]);
    }
}
