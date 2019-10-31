<?php 

namespace Api;

use PDO;

class Database {
    public $con;
    public $user = "root";
    public $host = "localhost";
    public $pass = "";
    public $database = "api";

    public function __construct(){
        $this->con = new PDO('mysql:host='.$this->host.'; dbname='.$this->database.';',$this->user,$this->pass);
    }

    public function getCon(){
        return $this->con;
    }
}