<?php

use App\Models\Comment;
use App\Models\Post;
use App\Models\User;
use Faker\Generator;

$factory->define(Comment::class, function (Generator $faker) {
    return [
        'comment' => $faker->paragraph,
        'name' => $faker->name,
        'email' => $faker->email,
        'website' => 'https://' . $faker->word . '.com',
        'post_id' => function () {
            return factory(Post::class)->create()->id;
        }
    ];
});
