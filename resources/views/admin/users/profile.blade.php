@extends('layouts.app')

@section('content')

@include('admin.includes.errors');



<div class="card">
	<div class="card-header">
		<h3 align="center">Edit Your Profile</h3>
		
	</div>

	<div class="card-body">
		<form action="{{route('user.profile.update')}}" method="post" enctype="multipart/form-data">

			{{csrf_field()}}

			<div class="form-group">
				<label for="name">User Name</label>
				<input type="text" name="name" value="{{$user->name}}" class="form-control">
				</div>

				<div class="form-group">
				<label for="name">Email</label>
				<input type="email" name="email" value="{{$user->email}}" class="form-control">
				</div>

					<div class="form-group">
				<label for="name">New Password</label>
				<input type="password" name="password"  class="form-control">
				</div>

						<div class="form-group">
				<label for="name">Upload new avatar</label>
				<input type="file" name="avatar" class="form-control">
				</div>

	<div class="form-group">
				<label for="name">Facebook Profile</label>
				<input type="text" name="facebook" value="{{$user->profile->facebook}}" class="form-control">
				</div>

<div class="form-group">
				<label for="name">Youtube Profile</label>
				<input type="text" name="youtube" value="{{$user->profile->youtube}}" class="form-control">
				</div>

				<div class="form-group">
				<label for="about">About</label>
				<textarea name="about" id="about" cols="7" rows="7" class="form-control">{{$user->profile->about}}</textarea>
				</div>

				<div class="form-group">
				<div class="text-center">
					<button class="btn btn-success" type="submit">Update</button> |

					<button class="btn btn-default" type="reset">Reset</button>
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