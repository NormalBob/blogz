@extends('admin.layouts.app_admin')

@section('content')
    <div class="container">
        <div class="row">

            <div class="col-sm-4">
                <div class="jumbotron">
                    <h1 class="text-center"><span class="badge  badge-primary">Categories {{$count_categories}}</span></h1>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="jumbotron">
                    <h1 class="text-center"><span class="badge badge-primary ">Materials {{$count_articles}}</span></h1>
                </div>
            </div>

            <div class="col-sm-4">
                <div class="jumbotron">
                    <h1 class="text-center"><span class="badge badge-primary">Users {{$count_users}}</span></h1>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-4">
                <a class="btn btn-block btn-lg btn-secondary" href="{{route('admin.category.create')}}">Create category</a>
            </div>
            <div class="col-sm-4">
                <a class="btn btn-block btn-lg btn-secondary" href="{{route('admin.article.create')}}">Create material</a>
            </div>
        </div>

        <div class="row mt-5">
            <div class="col-sm-4">

                <h2 class="list-group-item list-group-item-info text-center">Last Categories </h2>
                @foreach($categories as $category)
                    <a class="list-group-item" href="{{route('admin.category.edit', $category)}}">
                        <h3 class="list-group-item-heading">{{$category->title}}</h3>
                        <p class="list-group-item-text">{{$category->articles()->count()}}</p>
                    </a>
                @endforeach
            </div>

            <div class="col-sm-4">

                <h2 class="list-group-item list-group-item-info text-center">Last Articles </h2>
                @foreach($articles as $article)
                    <a class="list-group-item" href="{{route('admin.article.edit', $article)}}">
                        <h3 class="list-group-item-heading">{{$article->title}}</h3>
                        <p class="list-group-item-text">{{$article->categories()->pluck('title')->implode(', ')}}</p>
                    </a>
                @endforeach
            </div>

            <div class="col-sm-4">
                <h2 class="list-group-item list-group-item-info text-center">Last Comments </h2>
                @foreach($comments as $comment)
                    <a class="list-group-item @if($comment->approved) list-group-item-success @else list-group-item-danger @endif" href="{{route('admin.comment.edit', $comment)}}">
                        <div class="d-flex w-100 justify-content-between">
                            <h4 class="mb-1 list-group-item-heading">{{$comment->user->name}}</h4>
                            <small>{{ $comment->created_at->diffForHumans() }}</small>
                        </div>
                        <p class="list-group-item-text mb-1">{{$comment->comment}}</p>
                        <small>{{$comment->article->title}}</small>
                    </a>

                @endforeach
            </div>
        </div>

    </div>
@endsection