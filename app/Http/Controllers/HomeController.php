<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Sponsor;
use App\Models\Category;
use App\Models\Page;
use App\Models\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

class HomeController extends Controller
{
    public function index()
    {
        $data = config('general-settings');
        if ($data['features']['sponsors']) {
            $data['sponsors'] = Sponsor::where('featured', 1)->get();
        }
        $data['page'] = Page::where('slug', Route::currentRouteName())->firstOrFail();
        $data['sections'] = [];
        foreach ($data['page']->sections as $section) {
            $data['sections'][$section->section->title] = $section->section;
            if ($section->section->has_dataset) {
                $tmp = $section->section->dataset;
                $tmp2 = Article::query()->whereNotNull('published_at');
                $tmp2 = $tmp2->where([
                    ['category_id', $tmp->category->id],
                    ['private', 0]
                ]);
                $tmp2 = $tmp2->orderBy($tmp->order_col, $tmp->order_sort);
                if ($tmp->paginate) {
                    if ($tmp->paginate == 'default') {
                        $tmp2 = $tmp2->paginate($tmp->limit);
                    } else if ($tmp->paginate == 'simple') {
                        $tmp2 = $tmp2->simplePaginate($tmp->limit);
                    }
                } else {
                    $tmp2 = $tmp2->take($tmp->limit)->get();
                }
                $data['loads'][$tmp->variable_name] = $tmp2;
            }
        }
        return view('pages.index', compact('data'));
    }

    public function search(Request $request)
    {
        $data = config('general-settings');
        $data['page'] = Page::where('slug', Route::currentRouteName())->firstOrFail();
        $data['categories'] = Category::where('searchable', 1)->get();
        $data['tags'] = Tag::withoutTrashed()->get();

        $tmp = Article::query();
        $tmp = $tmp->whereNotNull('published_at')->where('private', 0);

        $tmp = $tmp->whereHas('category', function ($query) use ($request) {
            if ($request->input('category')) {
                $query->where('category_name', $request->input('category'));
            } else {
                $query->where('default', 1);
            }
            $query->where('searchable', 1);
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
        // dd($data);
        return view('pages.search', compact('data', 'request'));
    }

    public function detail(string $category, string $slug)
    {
        $data = config('general-settings');
        $data['category'] = Category::where('slug', $category)->firstOrFail();
        $data['article'] = Article::where('slug', $slug)->whereNotNull('published_at')->firstOrFail();
        $tags = [];

        foreach ($data['article']->tags as $key => $tag) {
            $tags[$key] = $tag->tag_name;
        }

        $data['related'] = Article::query()
            ->where('id', "!=", $data['article']->id)
            ->where('category_id', "=", $data['article']->category_id)
            ->whereNotNull('published_at')
            ->whereHas('tags', function ($q) use ($tags) {
                $q->whereIn('tag_name', $tags);
            })
            ->take(4)
            ->get();

        if ($data['features']['sponsors']) {
            $data['sponsors'] = $data['article']->sponsors()->get();
        }
        return view('pages.details.'.$data['category']->detail_page, compact('data'));
    }
}
