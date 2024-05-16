<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use App\Http\Resources\PostResource;
use Illuminate\Support\Facades\Auth;
use App\Http\Resources\PostDetailResource;

class PostController extends Controller
{
    public function index()
    {
        // mendapatkan semua data all dan komentar
        $posts = Post::all();
        return PostDetailResource::collection($posts->loadMissing(['writer:id,username', 'comments:id,post_id,user_id,comments_contents']));
    }

    public function show($id)
    {
        // mendapatkan 1 data berdasarkan id dan komentar
        $post = Post::with('writer:id,username')->findOrFail($id);
        return new PostDetailResource($post->loadMissing(['writer:id,username', 'comments:id,post_id,user_id,comments_contents']));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'title' => 'required|max:255',
            'news_content' => 'required',
        ]);

        $request['author'] = Auth::user()->id;
        $post = Post::create($request->all());
        return new PostDetailResource($post->loadMissing('writer:id,username'));
    }

    public function update(Request $request, $id) // request untuk menagkap inputan dari user, $id untuk menamngkap postingan yang ingin di update
    {
        $validated = $request->validate([
            'title' => 'required|max:255',
            'news_content' => 'required',
        ]);

        $post = Post::findOrFail($id);
        $post->update($request->all());
        return new PostDetailResource($post->loadMissing('writer:id,username'));
    }

    public function destroy($id)
    {
        $post = Post::findOrFail($id);
        $post->delete();

        return new PostDetailResource($post->loadMissing('writer:id,username'));
    }
}
