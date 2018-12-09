<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Post;
use App\Tag;
use Auth;
use Session;

class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
       $passdata= Post::all();
        return view('admin.posts.index')->with('posts',$passdata);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories=Category::all();
        $tags=Tag::all();
        if($categories->count()==0 || $tags->count()==0)
        {

Session::flash('info','Please must Create a Category or Tag First!');
            return redirect()->back();
        }
      return view('admin.posts.create')->with('categories',$categories)->with('tags',$tags);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
   
          $this->validate($request,[
             'title'=>'required',
             'featured'=>'required|image',
             'content'=>'required',
             'category_id'=>'required',
              'tags'=>'required'

        ]);

        $featured=$request->featured;

        $featured_new_name=time().$featured->getClientOriginalName();

        $featured->move('uploads/posts/',$featured_new_name);

        $post=Post::create([
               'title'=>$request->title,
               'content'=>$request->content,
               'featured'=>'/uploads/posts/'.$featured_new_name,
               'category_id'=>$request->category_id,
               'slug'=>str_slug($request->title),
               'user_id'=>Auth::id()

        ]);
$post->tags()->attach($request->tags);

        Session::flash('success','You Have Successfully Created a Post.');

        return redirect()->back();

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
         $post=Post::find($id);
          $categories=Category::all(); 
          $tags=Tag::all();

          return view('admin.posts.edit')->with('post',$post)->with('categories', $categories)->with('tags',$tags);
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
        

         $this->validate($request,[
             'title'=>'required',
             'content'=>'required',
             'category_id'=>'required'

        ]);
          $post=Post::find($id);

         if($request->hasFile('featured')){
                 $featured=$request->featured;

        $featured_new_name=time().$featured->getClientOriginalName();

        $featured->move('uploads/posts/',$featured_new_name);
        $post->featured='uploads/posts/'.$featured_new_name;
         }

           $post->title=$request->title;
           $post->content=$request->content;
           $post->category_id=$request->category_id;

           $post->save(); 
           $post->tags()->sync($request->tags);

           Session::flash('success','You Have Successfully Updated a Post.');

        return redirect()->route('posts');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         $post=Post::find($id); 
    

        $post->delete();
        Session::flash('success','You Have Successfully Trashed a Post.');
        return redirect()->route('posts'); 
    }

    public function trashed(){
                 $post=Post::onlyTrashed()->get();
                return view('admin.posts.trashed')->with('posts',$post);
    }

     public function kill($id)
    {
         $post=Post::withTrashed()->where('id',$id)->first(); 
    

        $post->forceDelete();
        Session::flash('success','You Have Peramanently Deleted a Post.');
        return redirect()->back(); 
    }

    public function restore($id){

          $post=Post::withTrashed()->where('id',$id)->first(); 
           $post->restore();
        Session::flash('success','You  Post is Restored.');
        return redirect()->route('posts'); 
    }
}
