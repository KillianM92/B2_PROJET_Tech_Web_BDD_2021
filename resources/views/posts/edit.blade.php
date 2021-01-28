@extends('layouts.app') 

@section('content')
    <h1>Modifiez votre avis!</h1>
    {!! Form::open(['action' => ['App\Http\Controllers\PostsController@update', $post->id], 'method' => 'POST']) !!}
    <div class="form-group">
        {{ Form::label('title', 'Titre') }}
        {{ Form::text('title', $post->title, ['class' => 'form-control', 'placeholder' => 'Cyberpunk 2077 est extrêment nul']) }}
    </div>
    <div class="form-group">
        {{ Form::label('body', 'Texte') }}
        {{ Form::textarea('body', $post->body, ['class' => 'form-control', 'placeholder' => 'Votre avis est demandé pour raison de qualité du site...']) }}
    </div>
    {{ Form::hidden('_method', 'PUT') }} 
    {{ Form::submit('Submit', ['class' => 'btn btn-primary']) }}
    {!! Form::close() !!}

@endsection