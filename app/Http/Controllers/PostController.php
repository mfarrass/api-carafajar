<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use App\Http\Resources\PostResource;
use App\Http\Resources\PostDetailResource;

class PostController extends Controller
{
    function index() 
    {
        $posts = Post::all();
        return PostResource::collection($posts);
    }

    function show($id)
    {
        $post = Post::with('writer:id,username')->findOrFail($id);
        return new PostDetailResource($post);
    }

    function show2($id)
    {
        $post = Post::findOrFail($id);
        return new PostDetailResource($post);
    }
}
