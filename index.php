<?php


$sql = "select * from weather";
foreach($dbh->query($sql) as $row){
    echo $row['city'];
}