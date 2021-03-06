<?php

namespace App\Http\Controllers\Admin;

use App\Comment;
use App\Article;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $request->user()->authorizeRoles(['admin']);
        return view('admin.comments.index', [
            'comments' => Comment::orderBy('created_at', 'desc')->paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request, $slug)
    {
        $this -> validate(request(), ['comment' => 'required|min:10|max:255']);

        if( !Auth::user() )
        {
            return back()->withErrors([
                'message' => 'You must be signed in.'
            ]);
        }
        else
        {
            $article = Article::where('slug', $slug)->first();

            $comment = new Comment();

            $comment->comment = $request->comment;
            $comment->user_id = Auth::user()->id;
            $comment->approved = false;
            $comment->article_id = $article->id;

            $comment->save();
        }

        return redirect()->route('article', $slug);

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function show(Comment $comment)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function edit(Comment $comment, Request $request)
    {
        $request->user()->authorizeRoles(['admin']);
        return view('admin.comments.edit', [
            'comment' => $comment
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Comment $comment)
    {
        $comment->comment = $request['comment'];
        $comment->answer = $request['answer'];
        $comment->approved = $request['approved'];
        $comment->article_id = $request['article_id'];
        $comment->approver_id = Auth::user()->id;
        $comment->user_id = $request['user_id'];

        $comment->save();

        return redirect()->route('admin.comment.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Comment  $comment
     * @return \Illuminate\Http\Response
     */
    public function destroy(Comment $comment)
    {
        $comment->delete();

        return redirect()->route('admin.comment.index');
    }
}
