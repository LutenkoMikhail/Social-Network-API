<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\API\BaseController as BaseController;
use App\User;
use http\Exception;
use Illuminate\Support\Facades\Auth;


class FriendController extends BaseController
{

    public function index()
    {
        $friends = Auth::user()->friends();
        return $this->sendResponse($friends->toArray(), 'All friends.');
    }

    public function addFriend(User $user)
    {
        Auth::user()->addFriend($user);
        return $this->sendResponse($user->toArray(), 'We sent a request to add to friends.');
    }

    public function deleteAcceptFriend(User $user)
    {
        Auth::user()->deleteFriend($user);
        return $this->sendResponse($user->toArray(), 'Reject friendship.');
    }


    public function acceptFriend(User $user)
    {
        Auth::user()->acceptFriendRequest($user);
        return $this->sendResponse($user->toArray(), 'Add to friends.');
    }

}



