<?php

namespace App\Http\Controllers\Admin;

use App\Comment;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Article;
use App\Category;
use App\User;

class DashboardController extends Controller
{
    //Dashboard
    public function dashboard(Request $request){
        $request->user()->authorizeRoles(['admin']);
        return view('admin.dashboard', [
            'categories' => Category::lastCategories(5),
            'articles' => Article::lastArticles(5),
            'comments' => Comment::lastComments(5),
            'count_categories' => Category::count(),
            'count_articles' => Article::count(),
            'count_users' => User::count(),
        ]);
    }
}

