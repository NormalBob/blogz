@extends('admin.layouts.app_admin')

@section('content')

    <div class="container">

        @component('admin.components.breadcrumb')
            @slot('title') Users editing @endslot
            @slot('parent') Home @endslot
            @slot('active') Users @endslot
        @endcomponent
        <hr/>

        <form class="form-horizontal" action="{{route('admin.user_managment.users.update', $user)}}" method="post">
            {{ method_field('PUT') }}
            {{ csrf_field() }}

            {{-- Form include--}}
            @include('admin.user_managment.users.partials.form')
        </form>
    </div>

@endsection