@extends('layouts.app') 


@section('title')
    Laravel Game Description
@endsection

@section('content')
    <div class="row mb-2">
            <div class="col-md-12">
                <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-smh-md-250 position-relative">
                    <div class="col p-4 d-flex flex-column position-static">
                        <strong class="d-inline-block mb-2 text-success">Jeux Vidéos</strong>
                        <h5 class="mb-0"> {{ $product -> title }}</h5>
                        <div class="mb-1 text-muted"> 
                            {{ $product -> created_at -> format('d/m/Y') }}
                        </div>
                        <p class="mb-auto"> 
                            {{ $product -> description }}
                        </p>
                        <br>
                        <strong class="mb-auto"> 
                            {{ $product -> note . '/20' }}
                        </strong>
                        <br>
                        <strong class="mb-auto">
                            {{ $product -> getFrenchPrice() }}
                        </strong>
                        
                        <div class="col-auto d-none d-lg-block">
                            <img src="{{ $product -> image}}" alt="image du jeu">
                        </div>
                        <br>
                        <form class="d-flex" method="POST" action="{{ route('cart.store') }}">
                            @csrf
                            <input type="hidden" name="id" value="{{ $product -> id }}">
                            <input type="hidden" name="title" value="{{ $product -> title }}">
                            <input type="hidden" name="price" value="{{ $product -> price }}">
                            <button class="btn btn-outline-success" type="submit">Ajouter au panier</button>
                          </form>
                    </div>
                </div>
            </div>
    </div>
@endsection