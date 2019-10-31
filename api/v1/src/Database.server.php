<?php 

namespace Api;

use PDO;

class Database {
    public $con;
    public $user = "u758985735_apiuser";
    public $host = "localhost";
    public $pass = "xth401std";
    public $database = "u758985735_api";

    public function __construct(){
        $this->con = new PDO('mysql:host='.$this->host.'; dbname='.$this->database.';',$this->user,$this->pass);
    }

    public function getCon(){
        return $this->con;
    }
}