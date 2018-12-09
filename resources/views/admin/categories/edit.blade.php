@extends('layouts.app')

@section('content')

@include('admin.includes.errors');


<div class="card">
	<div class="card-header">
		<h3 align="center">Update Category:{{$categ->name}}</h3>
		
	</div>

	<div class="card-body">
		<form action="{{route('category.update',['id'=>$categ->id])}}" method="post">

			{{csrf_field()}}

			<div class="form-group">
				<label for="name">Title</label>
				<input type="text" name="name" value="{{$categ->name}}" class="form-control">
				</div>

				<div class="form-group">
				<div class="text-center">
					<button class="btn btn-success" type="submit">Update Category</button>
				</div>
				</div>
			</form>
		
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