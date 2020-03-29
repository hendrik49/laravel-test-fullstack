@forelse ($post->comments as $comment)
    <div class="panel panel-default">
        <div class="panel-heading">
            {{ $comment->name }} says...

            <span class="pull-right">{{ $comment->created_at->diffForHumans() }}</span>
        </div>

        <div class="panel-body">
            <p>{{ $comment->comment }}</p>
        </div>
    </div>
@empty
    <div class="panel panel-default">
        <div class="panel-heading">Not Found!!</div>

        <div class="panel-body">
            <p>Sorry! No comment found for this post.</p>
        </div>
    </div>
@endforelse
