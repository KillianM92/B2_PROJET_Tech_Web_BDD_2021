@extends('layouts.app') 


@section('title')
    Laravel Game List
@endsection

@section('content')
    <div class="row mb-2">
        @foreach ($products as $product)
            <div class="col-md-4">
                <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-smh-md-250 position-relative">
                    <div class="col p-4 d-flex flex-column position-static">
                        <strong class="d-inline-block mb-2 text-success">Jeux Vidéos</strong>
                        <h5 class="mb-0"> {{ $product -> title }}</h5>
                        <div class="mb-1 text-muted"> 
                            {{ $product -> created_at -> format('d/m/Y') }}
                        </div>
                        <p class="mb-auto"> 
                            {{ $product -> subtitle }}
                        </p>
                        <strong class="mb-auto">
                            {{ $product -> getFrenchPrice() }}
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