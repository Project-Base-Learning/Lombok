<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Sponsor;
use App\Models\Tag;
use Illuminate\Support\Facades\Route;

class HomeController extends Controller
{
    public function index()
    {
        $data = $this->page(Route::currentRouteName());
        foreach ($data['page']->sections as $key => $section) {
            $tmp = $section->pattern;
            if ($tmp->has_dataset) {
                $tmp = $tmp->dataset;
                $tmp2 = Article::query();
                $tmp2 = $tmp2->where([
                    // ['tag_id', $tmp->tag->id],
                    ['private', 0]
                ])->whereNotNull('published_at');
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
                $data["$tmp->name_variable"] = $tmp2;
            }
        }
        $data['sponsors'] = Sponsor::where('featured', 1)->get();
        return view('pages.index', compact('data'));
    }

    public function detail(string $tag, string $slug) {
        $data = $this->page('home');
        $data['tag'] = Tag::where('tag', $tag)->firstOrFail();
        $data['article'] = Article::where('slug', $slug)->whereNotNull('published_at')->firstOrFail();
        $categories = [];

        foreach ($data['article']->categories as $key => $category) {
            $categories[$key] = $category->category_name;
        }

        $data['related'] = Article::query()
            ->where('id', "!=", $data['article']->id)
            ->where('tag_id', "=", $data['article']->tag_id)
            ->whereNotNull('published_at')
            ->whereHas('categories', function ($q) use ($categories) {
                $q->whereIn('category_name', $categories);
            })
            ->take(4)
            ->get();

        $data['sponsors'] = $data['article']->sponsors()->get();
        return view($data['tag']->layout_detail_path, compact('data'));
    }
}
