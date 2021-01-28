@extends('layouts.app') 


@section('title')
    Laravel Game Profil
@endsection

@section('content')
        @php
           $users = DB::select('SELECT * FROM users');
       @endphp
    <div class="row mb-2">
        @foreach ($users as $user)
            <div class="col-md-12">
                <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-smh-md-250 position-relative">
                    <div class="col p-4 d-flex flex-column position-static">
                        <strong class="d-inline-block mb-2 text-success">Bienvenue sur votre profil</strong>
                        <h5 class="mb-0"> Nom & Prénom : {{ $user -> name . ' ' . $user -> prenom}}</h5>
                        <div class="mb-1 text-muted"> 
                            Date de naissance (Y/m/d) : {{ $user -> ddn }}
                        </div>
                        <p class="mb-auto"> 
                            Email : {{ $user -> email }}
                        </p>
                        <strong class="mb-auto">
                            Solde : {{ $user -> solde . ' €' }}
                        </strong>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endsection')