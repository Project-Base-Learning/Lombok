<?php

namespace App\Http\Controllers;

use App\Models\Article;
use App\Models\Sponsor;
use App\Models\Category;
use App\Models\Page;
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
            $data['sections'][] = $section->section;
            if ($section->section->has_dataset) {
                $tmp = $section->section->dataset;
                $tmp2 = Article::query();
                $tmp2 = $tmp2->where([
                    ['category_id', $tmp->category->id],
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
        return view('pages.index', compact('data'));
    }

    public function detail(string $category, string $slug)
    {
        $data = config('general-settings');
        $data['category'] = Category::where('category_name', $category)->firstOrFail();
        $data['article'] = Article::where('slug', $slug)->whereNotNull('published_at')->firstOrFail();
        $categories = [];

        foreach ($data['article']->categories as $key => $category) {
            $categories[$key] = $category->category_name;
        }

        $data['related'] = Article::query()
            ->where('id', "!=", $data['article']->id)
            ->where('category_id', "=", $data['article']->category_id)
            ->whereNotNull('published_at')
            ->whereHas('categories', function ($q) use ($categories) {
                $q->whereIn('category_name', $categories);
            })
            ->take(4)
            ->get();

        $data['sponsors'] = $data['article']->sponsors()->get();
        return view($data['category']->layout_detail_path, compact('data'));
    }


//     public function showEvents()
// {
//     $events = [
//         (object) [
//             'title' => 'Event 1',
//             'description' => 'Deskripsi untuk event pertama.',
//             'date' => '01 Jan 2025',
//             'image' => 'berita.svg'
//         ],
//         (object) [
//             'title' => 'Event 2',
//             'description' => 'Deskripsi untuk event kedua.',
//             'date' => '02 Feb 2025',
//             'image' => 'berita.svg'
//         ],
//         (object) [
//             'title' => 'Event 3',
//             'description' => 'Deskripsi untuk event ketiga.',
//             'date' => '03 Mar 2025',
//             'image' => 'berita.svg'
//         ],
//         (object) [
//             'title' => 'Event 4',
//             'description' => 'Deskripsi untuk event keempat.',
//             'date' => '04 Apr 2025',
//             'image' => 'berita.svg'
//         ]
//     ];

//     return view('pages.publikasi', compact('events'));
// }

}
