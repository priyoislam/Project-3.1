<?php
$server="localhost";
$user="root";
$password="";
$db="dbase";

$connect=mysqli_connect($server,$user,$password,$db);

if($connect){
    ?>
              <?php
}
else{
    ?>
    <script>
        alert("No Connection");
        </script>
        <?php
}



?>