<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class PagesController extends Controller
{
    public function index(){
        $title = 'Bienvenue chez VideoGameShop';
        //return view('pages.index', compact('title'));
        return view('pages.index')->with('title', $title);
    }
    public function about(){
        $title = 'A propos de moi';
        return view('pages.about')->with('title', $title);
    }
    public function profil($id)
    {
        $user = User::where('id', $id)->firstOrFail();
        return view('profil-form')->with('user', $user);
    }
}
