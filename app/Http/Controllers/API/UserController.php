<?php


namespace App\Http\Controllers\API;


use App\User;

class UserController extends BaseController
{
    public function index()
    {
        $allUsers = User::all();
        return $this->sendResponse($allUsers->toArray(), 'Users retrieved successfully.');

    }
}
