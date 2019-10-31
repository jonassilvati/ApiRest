<?php 

namespace Api;

use Api\Produto;
use Exception;

class Rest{
    public static function open($request){
        $url = explode('/',$request['url']);
    
        //classe da requisição
        $class = "Api\\".ucfirst($url[0]);
        array_shift($url);


        //metodo da classe
        $method = $url[0];
        array_shift($url);
        
        //parametros para o metodo
        $params = $url;

        try{
            if(class_exists($class)){
                if(method_exists($class,$method)){
                    $retorno = call_user_func_array(array(new $class, $method), $params);
                    return json_encode($retorno);
                }
            }
        }catch(Exception $e){
            return json_encode(array('status' => 'error', 'data' => $e->getMessage()));
        }
        
    }
}