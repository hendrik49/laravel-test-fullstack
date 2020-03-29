<?php

use App\Models\Post;
use App\User;
use Faker\Generator;

$factory->define(Post::class, function (Generator $faker) {
    $title = $faker->sentence;

    return [
        'title' => $title,
        'content' => $faker->paragraph,
        'slug' =>  Str::slug($title, '-'),
        'user_id' => function () {
            return factory(User::class)->create()->id;
        }
    ];
});
