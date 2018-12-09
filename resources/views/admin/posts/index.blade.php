@extends('layouts.app')

@section('content')
<div class="card">
	<div class="card-header">
		<h3 align="center">All Posts</h3>
		
	</div>
	<div class="card-body">
		<table class="table">
	
<thead>
	
	<th>
		<h4>Image</h4>
	</th>
<th><h4>Title</h4></th>
	<th><h4>Edit</h4></th>
	<th><h4>Trash</h4></th>
</thead>

<tbody>
	@if($posts->count()>0)

@foreach($posts  as $post)

<tr>
	<td>
		<img src="{{$post->featured}}" alt="{{$post->title}}" width="90px" height="50px">

	</td>
	<td>
		{{$post->title}}
	</td>

	<td>
		<a href="{{route('post.edit',['id'=>$post->id])}}" class="btn btn-info">Edit</a>

	</td>

	<td>
		<a href="{{route('post.delete',['id'=>$post->id])}}" class="btn btn-danger">Trash</a>
	
	</td>
</tr>
@endforeach

	@else
<tr>
	
	<th colspan="5" class="text-center">No Published Post Found</th>
</tr>


	@endif

	


</tbody>
</table>
	</div>

		<div class="card-footer">
		<div class="text-center">
<?php
date_default_timezone_set("Asia/Karachi");
echo "The time is " . date("h:i:sa");
?>			

		</div>
	</div>
</div>








@stop