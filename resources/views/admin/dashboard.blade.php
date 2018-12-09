@extends('layouts.app')

@section('content')

            <div class="card">
                <div class="card-header text-center"> <h3>Dashboard</h3></div>

            </div>
            <br>
 <div class="row">

 <div class="col-sm-3">
<div class="card border-success" style="max-width: 13rem; max-height: 13rem;">
  <div class="card-header bg-transparent border-success text-center">Published Posts</div>
  <div class="card-body text-success">
    <h5 class="card-title text-center">{{$post_count}}</h5>
  </div>
</div>
</div>

 <div class="col-sm-3">
<div class="card border-primary" style="max-width: 13rem; max-height: 13rem;">
  <div class="card-header bg-transparent border-primary text-center text-primary">Categories</div>
  <div class="card-body text-primary">
    <h5 class="card-title text-center">{{$category_count}}</h5>
  </div>
  
</div>
</div>

 <div class="col-sm-3">
<div class="card border-info" style="max-width: 13rem; max-height: 13rem;">
  <div class="card-header bg-transparent border-info text-center text-info">Users</div>
  <div class="card-body text-info">
    <h5 class="card-title text-center">{{$user_count}}</h5>
  </div>
  
</div>
</div>

 <div class="col-sm-3">
<div class="card border-danger" style="max-width: 13rem; max-height: 13rem;">
  <div class="card-header bg-transparent border-danger text-center text-danger">Trashed Posts  </div>
  <div class="card-body text-danger">
    <h5 class="card-title text-center">{{$trash_count}}</h5>
  </div>
  
</div>
</div>

</div>
 
@endsection
