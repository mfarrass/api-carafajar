<?php

namespace App\Models;

use App\Models\User;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;

class Comment extends Model
{
    use HasFactory, SoftDeletes;

    // membuat kolom apa saja yang wajib di isi, (kolom tertentu)
    protected $fillable = [
        'post_id', 'user_id', 'comments_contents'
    ];

    // relationship table user
    /**
     * Get the user that owns the Comment
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    // relationship untuk menampilkan user yang comment
    public function commentator(): BelongsTo
    {
        // foreign key = tabel comments, primary key = tabel user
        return $this->belongsTo(User::class, 'user_id', 'id');
    }
}
