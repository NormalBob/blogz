<?php

namespace App\Http\Controllers;

use App\Category;
use App\Article;
use App\Comment;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function category($slug)
    {
        $category = Category::where('slug', $slug)->first();

        return view('blog.category', [
            'category' => $category,
            'articles' => $category->articles()->where('published', 1)->orderBy('created_at', 'desc')->paginate(6)
        ]);
    }

    public function article($slug)
    {
        $article = Article::where('slug', $slug)->first();

        return view('blog.article', [
            'article' => $article,
            'comments' => $article->comments()->where('approved', 1)->orderBy('created_at', 'desc')-> paginate()
        ]);
    }

    public function home(Request $request)
    {
        $articles = Article::where('published', 1)->orderBy('created_at', 'desc')->paginate(6);

        if ($request->ajax()) {
            $view = view('blog.home',compact('articles'))->render();
            return response()->json(['html'=>$view]);
        }
        //return view('blog.home', [
        //    'articles' => Article::where('published', 1)->orderBy('created_at', 'desc')->paginate(12)
        //]);
        return view('blog.home',compact('articles'));
    }
}
