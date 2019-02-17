@extends('admin.layouts.app_admin')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="jumbotron">
                    <h4 class="text-center"><span class="badge badge-primary">Categories 0</span></h4>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="jumbotron">
                    <h4 class="text-center"><span class="badge badge-primary">Materials 0</span></h4>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="jumbotron">
                    <h4 class="text-center"><span class="badge badge-primary">Users 0</span></h4>
                </div>
            </div>

            <div class="col-sm-3">
                <div class="jumbotron">
                    <h4 class="text-center"><span class="label badge badge-primary">Users Today 0</span></h4>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-6">
                <a class="btn btn-block btn-secondary" href="{{route('admin.category.create')}}">Create category</a>
                <a class="list-group-item" href="#">
                    <h3 class="list-group-item-heading text-center">First category</h3>
                    <p class="list-group-item-text text-center">Count of materials</p>
                </a>
            </div>

            <div class="col-sm-6">
                <a class="btn btn-block btn-secondary" href="#">Create material</a>
                <a class="list-group-item" href="#">
                    <h3 class="list-group-item-heading text-center">First material</h3>
                    <p class="list-group-item-text text-center">Category</p>
                </a>
            </div>
        </div>

    </div>
@endsection