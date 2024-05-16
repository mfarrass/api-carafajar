<?php

namespace App\Http\Controllers;

use App\Http\Resources\CommentResource;
use App\Models\Comment;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    function store(Request $request) 
    {
        $validated = $request->validate([
            'post_id' => 'required|exists:posts,id',
            'comments_contents' => 'required',
        ]);

        $request['user_id'] = auth()->user()->id;

        $comment = Comment::create($request->all());

        // commentator sebagai function di models/comment.php dan :memanggil kolom tertentu saja
        // new sebagai create data baru
        return new CommentResource($comment->loadMissing(['commentator:id,username']));
    }

    function update(Request $request, $id)
    {
        $validated = $request->validate([
            'comments_contents' => 'required',
        ]);

        $comment = Comment::findOrFail($id);
        $comment->update($request->only('comments_contents'));

        return new CommentResource($comment->loadMissing(['commentator:id,username']));
    }

    function destroy($id)
    {
        $comment = Comment::findOrFail($id);
        $comment->delete();

        return new CommentResource($comment->loadMissing(['commentator:id,username']));
    }
}