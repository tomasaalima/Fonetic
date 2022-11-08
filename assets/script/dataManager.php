<?php
    $name = $_GET['user-name']; //nome
    $punctuation = 0;           //pontuação

    $palavras = array();        //lista de todas as palavras
    $sons = array();            //lista dos sons respectivos
    $pronuncias = array();      //lista das pronuncias respectivas

    $usados = array();          //lista das palavras já usadas
    $actual = 0;                //indice para referenciar palavra na lista

    $palavras = array_unique($palavras);    //remoção de duplicatas
    $sons = array_unique($sons);            //remoção de duplicatas
    $usados = array_unique($usados);        //remoção de duplicatas

    $order = array(0,1);    //mistura da ordem nas alternativas
    shuffle($order);
    
    function reload($actual, $usados){  //escolhe um novo indice, desconsiderando os já escolhidos
        array_push($usados, $actual);
        while(in_array($actual, $usados)){
            global $actual;
            $actual = rand(0,9);   
        }
    }

    function searchWords($dificult){    //busca todas as palavras do nivel indicado 
        $sql = "SELECT palavra, som FROM palavra WHERE nivel = '".$dificult."'";
        global $connection, $palavras, $sons;
        $result = $connection->query($sql);
        $count = 0;
        while($user_data = mysqli_fetch_assoc($result)){
            $palavras[$count] = $user_data['palavra'];
            $sons[$count] = $user_data['som'];
    
            $count++;
        }
    }

    function searchPronunces($dificult){    //busca todas as pronuncias do nivel indicado
        $sql = "SELECT a.pronuncia FROM alternativa a, palavra p WHERE p.nivel = '".$dificult."' AND a.palavra_id = p.id";
        global $connection, $pronuncias;
        $result = $connection->query($sql);
        $count = 0;
        while($user_data = mysqli_fetch_assoc($result)){
            $pronuncias[$count] = $user_data['pronuncia'];
    
            $count++;
        }
    }

    function rankRegister($name, $punctuation, $dificult){  //registra o jogador atual, assim como sua pontuação na tabela de ranking
        $sql = "INSERT INTO ranking(nome, pontos, dificuldade) VALUES('".$name."',".$punctuation.",'".$dificult."')";
        global $connection;
        $connection->query($sql);
    }