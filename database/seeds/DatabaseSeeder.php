<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Models\Post::class, 3)->create()->each(function($u) {
            $u->comments()->save(factory(App\Models\Comment::class)->make());
          });
    }
}
