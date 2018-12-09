@extends('layouts.app')

@section('content')
<div class="card">
	<div class="card-header">
		<h3 align="center">Categories</h3>
		
	</div>
	<div class="card-body">
		<table class="table">
	
<thead>
	
	<th>
		<h4>Category Name</h4>
	</th>

	<th><h4>Edit Category</h4></th>
	<th><h4>Delete Category</h4></th>
</thead>

<tbody>
	
	@if($catg->count()>0)

@foreach($catg  as $categ)

<tr>
	<td>
		{{$categ->name}}
	</td>

	<td>
		<a href="{{route('category.edit',['id'=>$categ->id])}}" class="btn btn-info">Edit</a>

	</td>

	<td>
		<a href="{{route('category.delete',['id'=>$categ->id])}}" class="btn btn-danger">Delete</a>
	
	</td>
</tr>
@endforeach

	@else

<tr>
	
	<th colspan="5" class="text-center">No Published Category</th>
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