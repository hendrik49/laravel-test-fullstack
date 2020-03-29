<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Comment extends Model
{


    protected $table = 'comments';

    public $timestamps = true;


    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
      'post_id',
      'name',
      'email',
      'website',
      'comment',
    ];

    /**
     * Return the comment's post
     */
    public function post(): BelongsTo
    {
        return $this->belongsTo(Post::class);
    }
}
