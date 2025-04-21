<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Category;
use App\Models\Tag;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function index(Request $request)
    {
        $data = $this->page('home');
        $data['page'] = (object) array('title' => 'Search');
        $data['tags'] = Tag::get();
        $data['categories'] = Category::withoutTrashed()->get();

        $tmp = Article::query();
        $tmp = $tmp->whereNotNull('published_at')->where('private', 0);

        $tmp = $tmp->whereHas('tag', function ($query) use ($request) {
            $query->where('tag', $request->input('tag') ? $request->input('tag') : 'article');
        });

        if ($request->filled('categories')) {
            $selected = explode(',', $request->categories);
            $tmp->whereHas('categories', function ($q) use ($selected) {
                $q->whereIn('category_name', $selected);
            }, '=', count($selected));
        }

        if ($request->filled('search')) {
            $tmp->where('title', 'like', '%'.$request->search.'%');
        }

        $data["result"] = $tmp->paginate(16)->withQueryString();
        return view('pages.search', compact('data', 'request'));
    }
}
