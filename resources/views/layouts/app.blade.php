<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Blog Admin') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/toastr.min.js') }}"></script>
       @yield('scripts')

  


    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/toastr.min.css') }}" rel="stylesheet">
       @yield('styles')

</head>
<body>
      <script>
        @if(Session::has('success'))
          toastr.success("{{Session::get('success')}}")
        @endif

          @if(Session::has('info'))
          toastr.info("{{Session::get('info')}}")
        @endif
    </script>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light navbar-laravel">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Blog Admin') }}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                            </li>
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{route('user.profile')}}">My Profile</a>
                                    @if(Auth::user()->admin)
                                    <a class="dropdown-item" href="{{route('settings')}}">Settings</a>
                                    @endif
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                      </li>
                  
                 
                   
             

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">


<div class="container">
    <div class="row">
        @if(Auth::check())

 <div class="col-lg-4">
    
           
            <ul class="list-group">
                <li class="list-group-item">
                    <a href="{{route('home')}}"><h4>Home</h4></a>
                   
                </li>

                  <li class="list-group-item">
                    <a href="{{route('categories')}}"> <h4>All Categories</h4></a>
                   
                </li>

  <li class="list-group-item">
                    <a href="{{route('posts')}}"><h4>All Posts</h4></a>
                   
                </li>
                <li class="list-group-item">
                    <a href="{{route('tags')}}"><h4>All Tags</h4></a>
                   
                </li>

                 <li class="list-group-item">
                    <a href="{{route('posts.trashed')}}"><h4>All Trashed Posts</h4></a>
                   
                </li>
                   <li class="list-group-item">
                    <a href="{{route('user.profile')}}"><h4>My Profile</h4></a>
                   
                </li>
@if(Auth::user()->admin)
                   <li class="list-group-item">
                    <a href="{{route('users')}}"><h4>All Users</h4></a>
                   
                </li>

                <li class="list-group-item">
                   
                    <a href="{{route('user.create')}}"><h4>Create New User</h4></a>

                    
                </li>
@endif
                   <li class="list-group-item">
                   
                    <a href="{{route('post.create')}}"><h4>Create a New Post</h4></a>
                </li>

                <li class="list-group-item">
                    
                    <a href="{{route('category.create')}}"><h4>Create a New Category</h4></a>
                </li>
                 
                   <li class="list-group-item">
                   
                    <a href="{{route('tag.create')}}"><h4>Create a tag</h4></a>

                </li>
                   <li class="list-group-item">
                   
                   @if(Auth::user()->admin)
                    <a href="{{route('settings')}}"><h4>Settings</h4></a>

                    @endif

                </li>

                   
 

                
            </ul>

        </div>



        @endif
       

        <div class="col-lg-8">
               @yield('content')
        </div>
    </div>

</div>
         
        </main>
    </div>
</body>
</html>
