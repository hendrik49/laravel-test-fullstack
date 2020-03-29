<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Comment;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function index()
    {
        $post = Post::first();
        $post = $post->load(['comments', 'user']);

        return view('post.post', compact('post'));
    }

    public function post($id)
    {
        $post = Post::find($id);
        $post->load(['comments', 'user']);

        return view('post.post', compact('post'));
    }

    public function comment(Request $request, $post)
    {
        $this->validate($request, ['comment' => 'required','name' => 'required','email' => 'email|required']);

        Comment::create([
            'post_id'=>$post,
            'name' => $request->name,
            'website' => $request->website,
            'email' => $request->email,
            'comment' => $request->comment
        ]);
        flash()->overlay('Comment successfully created');

        return redirect("/");
    }
}
