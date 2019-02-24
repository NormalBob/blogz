@extends('admin.layouts.app_admin')

@section('content')

    <div class="container">
        @component('admin.components.breadcrumb')
            @slot('title') Comments list @endslot
            @slot('parent') Home @endslot
            @slot('active') Comments @endslot
        @endcomponent

        <table class="table table-striped">
            <thead>
            <th>Text</th>
            <th>Approved</th>
            <th class="text-right">Action</th>
            </thead>
            <tbody>
            @forelse($comments as $comment)
                <tr>
                    <td>{{$comment->comment}}</td>
                    <td>{{$comment->approved}}</td>
                    <td class="text-right">
                        <form onsubmit="if(confirm('Delate?')){return true}else{return false}"
                              action="{{route('admin.comment.destroy', $comment)}}" method="post">
                            {{ method_field('DELETE') }}
                            {{csrf_field()}}

                            <a class="btn btn-default" href="{{route('admin.comment.edit', $comment)}}">
                                <i class="fa fa-edit"></i>
                            </a>

                            <button type="submit" class="btn btn-danger"><i class="fa fa-trash" > </i> </button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="3" class="text-center"><h2>Data not available</h2></td>
                </tr>
            @endforelse
            </tbody>
            <tfoot>
            <tr>
                <td colspan="3">
                    <ul class="pagination pull-right">
                        {{$comments->links()}}
                    </ul>
                </td>
            </tr>
            </tfoot>
        </table>
    </div>

@endsection