<?php

header('Content-Type: application/json; charset: utf-8');

require __DIR__ . '/vendor/autoload.php';

use Api\Produto;
use Api\Database;
use Api\Rest;

if(isset($_REQUEST)){
    echo Rest::open($_REQUEST);
}