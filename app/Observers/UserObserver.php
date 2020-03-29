<?php

namespace App\Observers;

use App\Models\Token;
use App\Models\User;

class UserObserver
{
    /**
     * Listen to the User creating event.
     */
    public function creating(User $user): void
    {
             
    }
}
