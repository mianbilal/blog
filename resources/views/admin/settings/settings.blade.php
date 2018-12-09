@extends('layouts.app')

@section('content')

@include('admin.includes.errors');



<div class="card">
	<div class="card-header">
		<h3 align="center">Blog Settings</h3>
		
	</div>

	<div class="card-body">
		<form action="{{route('settings.update')}}" method="post">

			{{csrf_field()}}

			<div class="form-group">
				<label for="name">Site Name</label>
				<input type="text" name="site_name" value="{{$settings->site_name}}" class="form-control">
				</div>

				<div class="form-group">
				<label for="name">Address</label>
				<input type="text" name="address" value="{{$settings->address}}"  class="form-control">
				</div>

				<div class="form-group">
				<label for="name">Contact Number</label>
				<input type="text" name="contact_number" value="{{$settings->contact_number}}"  class="form-control">
				</div>

				<div class="form-group">
				<label for="name">Contact Email</label>
				<input type="text" name="email_contact" value="{{$settings->email_contact}}"  class="form-control">
				</div>

				<div class="form-group">
				<div class="text-center">
					<button class="btn btn-success" type="submit">Update Site Settings</button>

					
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