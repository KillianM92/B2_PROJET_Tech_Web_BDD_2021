<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use DB;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    
     public function index()
    {
    
        $user_id = auth()->user()->id;
        $user = User::find($user_id);
        return view('home')->with('posts', $user->posts); //ce poste appartient a un utilisateur 
    }

    public function userUpdate( Request $request)
    {
        $userUpdate =   [
            'id'    =>  $request->idUpdate,
            'name'  =>  $request->name,
            'nom'   =>  $request->nom,
            'solde' =>  $request->solde, 
            'email' =>  $request->email
        ];
    }
}


