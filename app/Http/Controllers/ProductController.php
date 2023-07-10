<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function categorySubcategory()
    {
        $category = Category::all();
        return $category;
    }
}
