<?php
try{
    $dbh = new PDO('pgsql:host=localhost;port=5432;dbname=test;user=festool;password=butterscotch');
}catch(PDOException $e){

    echo $e->getMessage();
}


$sql = "select * from weather";
foreach($dbh->query($sql) as $row){
    echo $row['city'];
}