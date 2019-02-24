@extends('layouts.app')

@section('content')

<div class="bg-dark py-5">
    <div class="container ">
        <div id="carouselExampleControls" class="carousel slide " data-ride="carousel">

            <ol class="carousel-indicators">
                @foreach( $articles as $article )
                    @if($article->image_show)
                        <li data-target="#carouselExampleIndicators" data-slide-to="{{ $loop->index }}" class="{{ $loop->first ? 'active' : '' }}"></li>
                    @endif
                @endforeach
            </ol>

            <div class="carousel-inner" role="listbox">
                @foreach( $articles as $article )
                    @if($article->image_show)
                        <div class="carousel-item {{ $loop->first ? 'active' : '' }}">
                            <img class="d-block img-fluid mx-auto" src="{{asset('images/'.$article->image)}}" alt="{{ $article->title }}">
                            <div class="carousel-caption d-none d-md-block">
                                <h3>{{ $article->title }}</h3>
                                <p>{{ $article->descriptoin }}</p>
                            </div>
                        </div>
                    @endif
                @endforeach
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>

        </div>
    </div>
</div>
    <div class="container" id="post-data">
<div class="row ">
        @forelse($articles as $article)
            <div class="col-sm-6 p-5" data-aos="fade-right">
                <div>
                    <h2>
                        <a  href="{{route('article', $article->slug)}}" >{{$article->title}}</a>
                    </h2>
                    @if($article->image_show)
                        <img src="{{asset('images/'.$article->image)}}" width="100%">
                    @else
                        <img src="{{asset('images/'.'question-mark-600x400.jpg')}}" width="100%">
                    @endif
                    <p>{!!$article->description_short!!}</p>
                </div>
            </div>
        @empty
            <h2 class="text-center">
                Empty
            </h2>
        @endforelse
</div>
            {{$articles->links()}}
    </div>
    <!--<div class="ajax-load text-center" style="display:none">

        <p><img src="http://demo.itsolutionstuff.com/plugin/loader.gif">Loading More post</p>

    </div>
    <script type="text/javascript">
        var page = 1;
        $(window).scroll(function() {
            if($(window).scrollTop() + $(window).height() >= $(document).height()) {
                page++;
                loadMoreData(page);
            }
        });

        function loadMoreData(page){
            $.ajax(
                {
                    url: '?page=' + page,
                    type: "get",
                    beforeSend: function()
                    {
                        $('.ajax-load').show();
                    }
                })
                .done(function(data)
                {
                    if(data.html == " "){
                        $('.ajax-load').html("No more records found");
                        return;
                    }
                    $('.ajax-load').hide();
                    $("#post-data").append(data.html);
                })
                .fail(function(jqXHR, ajaxOptions, thrownError)
                {
                    alert('server not responding...');
                });
        }
    </script>-->
@endsection
