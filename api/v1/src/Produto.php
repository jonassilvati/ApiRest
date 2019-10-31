<?php

namespace Api;

use Api\Database;
use PDO;
use Exception;

class Produto{

    public $con;

    public function __construct(){
        $db = new Database();
        $this->con = $db->getCon();
    }

    public function show($id=0){
    
        if($id == 0){
            $sql = "SELECT p.id, p.titulo, p.valor, p.imagem, p.ordem, tp.titulo as tipo 
                    FROM produtos as p, tp_produto as tp
                    WHERE tp.id = p.id_tipo";
            $sql = $this->con->prepare($sql);
            $sql->execute();

            $result = array();
            while($row = $sql->fetch(PDO::FETCH_ASSOC)){
                $result[] = $row;
            }

            if(!$result){
                throw new Exception("Sem produtos");
            }

            return $result;

        }else{
            $sql = "SELECT p.id, p.titulo, p.valor, p.imagem, p.ordem, tp.titulo as tipo 
                    FROM produtos as p, tp_produto as tp
                    WHERE tp.id = p.id_tipo AND p.id = :id";
            $sql = $this->con->prepare($sql);
            $params = array(':id' => $id);
            $sql->execute($params);

            $result = array();
            while($row = $sql->fetch(PDO::FETCH_ASSOC)){
                $result[] = $row;
            }

            if(!$result){
                throw new Exception("Produto indisponível");
            }

            return $result;
        }
    }
}