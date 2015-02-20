<?php
require '../dbconnection.php';

// adding comment

$sql = "select * from weather";
foreach($dbh->query($sql) as $row){
    echo $row['city'];
}