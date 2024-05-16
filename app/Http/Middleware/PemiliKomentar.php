<?php

namespace App\Http\Middleware;

use Closure;
use App\Models\Comment;
use Illuminate\Http\Request;

class PemiliKomentar
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        // membuat hanya pemilik komentar yang boleh mengedit komentarnya
        $user = auth()->user();
        $comment = Comment::findOrFail($request->id);
        
        // cek apakah pemilik komentar = user yang sedang login
        // kondisi jika bukan akan menampilkan message error, jika iya diperbolehkan untuk update
        if ($comment->user_id != $user->id) {
            return response()->json(['message' => 'data not found']);
        }

        return $next($request);
    }
}
