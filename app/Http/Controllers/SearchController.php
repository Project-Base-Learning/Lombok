<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Tag;
use App\Models\Category;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function index(Request $request)
    {
        $data = $this->page('home');
        $data['page'] = (object) array('title' => 'Search');
        $data['categories'] = Category::get();
        $data['tags'] = Tag::withoutTrashed()->get();

        $tmp = Article::query();
        $tmp = $tmp->whereNotNull('published_at')->where('private', 0);

        $tmp = $tmp->whereHas('category', function ($query) use ($request) {
            if ($request->input('category')) {
                $query->where('category_name', $request->input('category'));
            } else {
                $query->where('default', 1);
            }
        });

        if ($request->filled('tags')) {
            $selected = explode(',', $request->tags);
            $tmp->whereHas('tags', function ($q) use ($selected) {
                $q->whereIn('tag_name', $selected);
            }, '=', count($selected));
        }

        if ($request->filled('search')) {
            $tmp->where('title', 'like', '%'.$request->search.'%');
        }

        $data["result"] = $tmp->paginate(16)->withQueryString();
        return view('pages.search', compact('data', 'request'));
    }
}
