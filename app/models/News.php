<?php
namespace MyApp\Models;

use MyApp\Models\Model;

class News extends Model
{
    public function getSource()
    {
        return 'news';
    }

}
