@extends('layouts.app')

@section('title', $category->title . " . BLOGZ")

@section('content')

    <div class="container">
        @forelse($articles as $article)
            <div class="row mt-5">
                <div class="col-sm-12">
                    <h2>
                        <a href="{{route('article', $article->slug)}}">{{$article->title}}</a>
                    </h2>
                    @if($article->image_show)
                        <img src="{{asset('images/'.$article->image)}}" >
                    @else
                        <img src="{{asset('images/'.'question-mark-600x400.jpg')}}">
                    @endif
                    <p>{!!$article->description_short!!}</p>
                </div>
            </div>
        @empty
            <h2 class="text-center">
                Empty
            </h2>
        @endforelse

        {{$articles->links()}}
    </div>

@endsection