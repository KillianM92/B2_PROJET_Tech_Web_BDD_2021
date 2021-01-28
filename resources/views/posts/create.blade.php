@extends('layouts.app') 

@section('content')
    <h1>Donnez nous votre avis!</h1>
    {!! Form::open(['action' => 'App\Http\Controllers\PostsController@store', 'method' => 'POST']) !!}
    <div class="form-group">
        {{ Form::label('title', 'Titre') }}
        {{ Form::text('title', '', ['class' => 'form-control', 'placeholder' => 'Mettez le titre de votre avis ici']) }}
    </div>
    <div class="form-group">
        {{ Form::label('body', 'Texte') }}
        {{ Form::textarea('body', '', ['class' => 'form-control', 'placeholder' => 'Votre avis est demandé pour raison de qualité du site...']) }}
    </div>
    {{ Form::submit('Submit', ['class' => 'btn btn-primary']) }}
    {!! Form::close() !!}

@endsection