@extends('layouts.app') 

@section('content')

       <h1>Bienvenue chez VideoGameShop </h1>
       <h6>Je vous invite à vous créer un compte afin d'accéder à votre espace membre et ainsi pouvoir acheter nos jeux vidéos mis en vente sur notre site !</h6>
       
       <nav class="navbar navbar-light bg-light">
              <div class="container-fluid">
                <form class="d-flex" type="get" action="{{ route('products.search') }}">
                  <input class="form-control me-5" name="query" type="text" placeholder="Rechercher un jeu vidéo">
                  <button class="btn btn-outline-dark" type="submit">Recherche</button>
                </form>
              </div>
       </nav>

       @php
           $products = DB::select('SELECT * FROM products');
       @endphp

       <div class="row mb-2">
              @foreach ($products as $product)
                  <div class="col-md-4">
                      <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-smh-md-250 position-relative">
                          <div class="col p-4 d-flex flex-column position-static">
                              <strong class="d-inline-block mb-2 text-success">Jeux Vidéos</strong>
                              <h5 class="mb-0"> {{ $product -> title }}</h5>
                              <div class="mb-1 text-muted"> 
                                  {{ $product -> created_at }}
                              </div>
                              <p class="mb-auto"> 
                                  {{ $product -> subtitle }}
                              </p>
                              <strong class="mb-auto">
                                  {{ $product -> price/100 .' €' }}
                              </strong>
                              <a href="{{ route('products.show', $product->id) }}" class="stretched-link btn btn-info">Voir le jeu</a>
                              <br>
                              <div class="col-auto d-none d-lg-block">
                                  <img src="{{ $product -> image}}" alt="image du jeu">
                              </div>
                          </div>
                      </div>
                  </div>
              @endforeach
          </div>
@endsection