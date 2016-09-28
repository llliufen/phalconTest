<?php
namespace MyApp\Models;

use MyApp\Models\Model;

class Comment extends Model
{
    public function getSource()
    {
        return 'comment';
    }

}
