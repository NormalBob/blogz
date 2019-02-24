@extends('layouts.app')

@section('title', $article->meta_title)
@section('meta_keyword', $article->meta_keyword)
@section('meta_description', $article->meta_description)

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <h1>{{$article->title}}</h1>
                <hr>

                <p class="card-text "><span class="ion-calendar"></span> {{ $article->created_at->toFormattedDateString() }} </p>
                @if($article->image_show)
                    <img class="mx-auto d-block" src="{{asset('images/'.$article->image)}}" >
                @else
                    <img class="mx-auto d-block" src="{{asset('images/'.'question-mark-600x400.jpg')}}">
                @endif

                <p>{!! $article->description !!}</p>
            </div>
        </div>
    </div>

    <div class="blog">
    <div class="container">
        <div class="row">
            <div class="mx-auto col-lg-8 " >
                <div class="card">
                    <div class="card-block">

                        <h4 class="card-title">Add Comment</h4>

                        <form method="post" action="{{route('newComment', $article->slug)}}">
                            {{ csrf_field() }}

                            <div class="col-lg-12">
                                <div class="form-group">
                                    <textarea type="text" class="form-control" name="comment" rows="5" style="overflow:hidden" placeholder="Message"></textarea>
                                </div>
                            </div>

                            <div class="col-lg-12">
                                <button type="submit" class="btn btn-default">
                                    <span>SUBMIT</span>
                                </button>
                            </div>

                            @if(count($errors))
                                <div class="form-group">
                                    <div class="alert alert-danger">
                                        <ul>
                                            @foreach($errors->all() as $error)
                                                <li>{{ $error }}</li>
                                            @endforeach
                                        </ul>
                                    </div>
                                </div>
                            @endif
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="mx-auto col-lg-8 " >
                <div class="card">
                    <div class="card-block">
                        <h4 class="card-title">Comments</h4>
                        <hr>

                        @if(count($comments) > 0)
                        @foreach($comments as $comment)
                            <div class="media p-3">
                                <img src="https://image.flaticon.com/icons/svg/236/236831.svg" alt="John Doe" class="mr-3 mt-3 rounded-circle" style="width:60px;">
                                <div class="media-body">
                                    <h5 class="mt-0 mb-1">{{ $comment->user->name}} <small>{{ $comment->created_at->diffForHumans() }}</small></h5>
                                    {{ $comment->comment }}
                                    @if($comment->answer)
                                        <div class="media mt-4">
                                            <img src="https://image.flaticon.com/icons/svg/236/236832.svg" alt="Jane Doe" class="mr-3 mt-3 rounded-circle" style="width:45px;">
                                            <div class="media-body">
                                                <h5 class="mt-0 mb-1">Admin <small>{{ $comment->updated_at->diffForHumans() }}</small></h5>
                                                {{ $comment->answer }}

                                            </div>
                                        </div>
                                    @endif
                                </div>

                            </div>
                            <hr>
                        @endforeach
                        @else
                            <h5 class="mt-0 mb-1"> - Comments not exist</h5>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection