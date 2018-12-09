@extends('layouts.frontend')


@section('content')
<div class="stunning-header stunning-header-bg-lightviolet">
    <div class="stunning-header-content">
        <h1 class="stunning-header-title">Category : {{$category->name}}</h1>
    </div>
</div>


<div class="container">
    <div class="row medium-padding120">
        <main class="main">
            
            <div class="row">
                        <div class="case-item-wrap">
                           @foreach($category->posts as $first_post)

                              <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                <div class="case-item">
                                    <div class="case-item__thumb">
                                        <img src="{{$first_post->featured}}" alt="our case">
                                    </div>
                                    <h6 class="case-item__title"><a href="{{route('post.single',['slug'=>$first_post->slug])}}">{{$first_post->title}}</a></h6>
                                </div>
                            </div>

                           @endforeach

                        </div>
            </div>

            <!-- End Post Details -->
           
            <!-- Sidebar-->

         

            <!-- End Sidebar-->

        </main>
    </div>
</div>





@endsection