@extends('layouts.app')

@section('content')

    @if (Cart::count() > 0)

    <div class="px-4 px-lg-0">
        <div class="pb-5">
          <div class="container">
            <div class="row">
              <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
      
                <!-- Shopping cart table -->
                <div class="table-responsive">
                  <table class="table">
                    <thead>
                      <tr>
                        <th scope="col" class="border-0 bg-light">
                          <div class="p-2 px-3 text-uppercase">Titre</div>
                        </th>
                        <th scope="col" class="border-0 bg-light">
                          <div class="py-2 text-uppercase">Prix</div>
                        </th>
                        <th scope="col" class="border-0 bg-light">
                          <div class="py-2 text-uppercase">Quantité</div>
                        </th>
                        <th scope="col" class="border-0 bg-light">
                          <div class="py-2 text-uppercase">Supprimer du panier</div>
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                     @foreach (Cart::content() as $product)
                        <tr>
                            <th scope="row" class="border-0">
                            <div class="p-2">
                                <img src="{{ $product -> model -> image }}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                <div class="ml-3 d-inline-block align-middle">
                                <h5 class="mb-0"> {{ $product -> model -> title }}</h5>
                                <span class="text-muted font-weight-normal font-italic d-block">{{ $product -> model -> subtitle }}</span>
                                </div>
                            </div>
                            </th>
                            <td class="border-0 align-middle"><strong>{{ $product -> model -> price/100 . ' €'}}</strong></td>
                            <td class="border-0 align-middle"><strong>1</strong></td>
                            <td class="border-0 align-middle">
                                <form action="{{ route('cart.destroy', $product->rowId) }}" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-dark rounded-pill">OK !</button>
                                </form>
                            </td>
                        </tr>
                     @endforeach
                    </tbody>
                  </table>
                </div>
                <!-- End -->
              </div>
            </div>
      
            <div class="row py-5 p-4 bg-white rounded shadow-sm">
              <div class="col-lg-6">
                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Résumé de la commande </div>
                <div class="p-4">
                  <ul class="list-unstyled mb-4">
                    <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Total de la commande</strong>
                      <h5 class="font-weight-bold">{{ Cart::subtotal() }}</h5>
                    </li>
                  </ul><a href="#" class="btn btn-dark rounded-pill py-2 btn-block">Procéder au paiement</a>
                </div>
              </div>
            </div>
      
          </div>
        </div>
      </div>
    @else
      <p>Votre panier est vide !</p>
    @endif

@endsection