@extends('layouts.app')

@section('content')
<div class="card">
	<div class="card-header">
		<h3 align="center">All Trashed Posts</h3>
		
	</div>
	<div class="card-body">
		<table class="table">
	
<thead>
	
	<th>
		<h4>Image</h4>
	</th>
<th><h4>Title</h4></th>
	<th><h4>Destroy Permanently</h4></th>
	<th><h4>Resotre</h4></th>
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
			<a href="{{route('posts.kill',['id'=>$post->id])}}" class="btn btn-danger">Delete</a>

	</td>

	<td>
		<a href="{{route('post.restore',['id'=>$post->id])}}" class="btn btn-success">Restore</a>
	
	</td>
</tr>
@endforeach

@else
<tr>
	
	<th colspan="5" class="text-center">No Trashed Post</th>
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