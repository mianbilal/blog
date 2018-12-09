<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use Session;

class CategoriesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $passdata= Category::all();
          return view('admin.categories.index')->with('catg',$passdata);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.categories.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
          
//dd($request->all());
          $this->validate($request,[
             'name'=>'required'

        ]);
         

        $category=new Category;
        $category->name=$request->name;

        $category->save();

        Session::flash('success','You Have Successfully Created a Category.');
       return redirect()->route('categories');

        
       
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $category=Category::find($id); 

          return view('admin.categories.edit')->with('categ',$category);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
          $category=Category::find($id); 
        $category->name=$request->name;

        $category->save();
        Session::flash('success','You Have Successfully Updated a Category.');
        return redirect()->route('categories');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         $category=Category::find($id); 
    foreach ($category->posts as $post) {

        $post->forceDelete();
           }

        $category->delete();
        Session::flash('success','You Have Successfully Deleted a Category.');
        return redirect()->route('categories');
    }
}
