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
                    <h1 class="text-center"><span class="badge badge-primary">Users 0</span></h1>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-4">
                <a class="btn btn-block btn-secondary" href="{{route('admin.category.create')}}">Create category</a>
                @foreach($categories as $category)
                    <a class="list-group-item" href="{{route('admin.category.edit', $category)}}">
                        <h3 class="list-group-item-heading">{{$category->title}}</h3>
                        <p class="list-group-item-text">{{$category->articles()->count()}}</p>
                    </a>
                @endforeach
            </div>

            <div class="col-sm-4">
                <a class="btn btn-block btn-secondary" href="{{route('admin.article.create')}}">Create material</a>
                @foreach($articles as $article)
                    <a class="list-group-item" href="{{route('admin.article.edit', $article)}}">
                        <h3 class="list-group-item-heading">{{$article->title}}</h3>
                        <p class="list-group-item-text">{{$article->categories()->pluck('title')->implode(', ')}}</p>
                    </a>
                @endforeach
            </div>

            <div class="col-sm-4">
                @foreach($articles as $article)
                    <a class="list-group-item" href="{{route('admin.article.edit', $article)}}">
                        <h3 class="list-group-item-heading">{{$article->title}}</h3>
                        <p class="list-group-item-text">{{$article->categories()->pluck('title')->implode(', ')}}</p>
                    </a>
                @endforeach
            </div>
        </div>

    </div>
@endsection