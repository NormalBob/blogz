<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    public function article()
    {
        return $this->belongsTo('App\Article');
    }

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function scopeLastComments($query, $count)
    {
        return $query->orderBy('created_at', 'desc')->take($count)->get();
    }
}
