@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">

            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        {{ $post->title }} - <small>by {{ $post->user->name }}/{{ $post->user->email }}</small>

                        <span class="pull-right">
                            {{ $post->created_at->toDayDateTimeString() }}
                        </span>
                    </div>

                    <div class="panel-body">
                        <p>{{ $post->content }}</p>
                    </div>
                </div>

                @include('post._form')

                @include('post._comments')

            </div>

        </dev>
    </dev>
@endsection
