<div class="panel panel-default">
    <div class="panel-heading">Write your comment</div>

    <div class="panel-body">
        {!! Form::open(['url' => "posts/{$post->id}/comment"]) !!}
            <div class="form-group">
                {!! Form::text('name', null, ['class' => 'form-control','placeholder' => 'name', 'required']) !!}
            </div>
            <div class="form-group">
                {!! Form::email('email', null, ['class' => 'form-control','placeholder' => 'email', 'required']) !!}
            </div>
            <div class="form-group">
                {!! Form::text('website', null, ['class' => 'form-control','placeholder' => 'website', 'required']) !!}
            </div>
            <div class="form-group">
                {!! Form::textarea('comment', null, ['class' => 'form-control', 'rows' => 3, 'required']) !!}
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">
                    Reply
                </button>
            </div>
        {!! Form::close() !!}
    </div>
</div>
