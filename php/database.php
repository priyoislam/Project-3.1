<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "research_101";
    $connect= mysqli_connect($servername,$username,$password,$dbname);
    if($connect){
        //echo "connected";
    }
    else{
        echo "not connected";
    }

?>