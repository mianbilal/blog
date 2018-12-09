@extends('layouts.app')

@section('content')
<div class="card">
	<div class="card-header">
		<h3 align="center">Users</h3>
		
	</div>
	<div class="card-body">
		<table class="table">
	
<thead>
	
	<th>
		<h4>Image</h4>
	</th>
<th><h4>Name </h4></th>
	<th><h4>Permissions</h4></th>
	<th><h4>Delete</h4></th>
</thead>

<tbody>
	@if($users->count()>0)

@foreach($users  as $user)

<tr>
	<td>
		<img src="{{asset($user->profile->avatar)}}" alt="Nothing" width="90px" height="50px" style="border-radius: 50%">

	</td>
	<td>
		{{$user->name}}
	</td>

	<td>
		@if($user->admin)
<a href="{{route('user.not.admin',['id'=>$user->id])}}" class="btn btn-danger">Remove Permission</a>

		@else
<a href="{{route('user.admin',['id'=>$user->id])}}" class="btn btn-info">Make Admin</a>


		@endif

	</td>

	<td>
		@if(Auth::id()!==$user->id)
		<a href="{{route('user.delete',['id'=>$user->id])}}" class="btn btn-danger">Delete</a>
	    @endif  
	</td>
</tr>
@endforeach

	@else
<tr>
	
	<th colspan="5" class="text-center">No Users Found</th>
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