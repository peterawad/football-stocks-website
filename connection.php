<?php

    $dbhost = "localhost";
    $dbuser = "root";
    $dbpass = "";
    $db = "footballstocks";
    $conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
    echo ("hi");
    return $conn;

function CloseCon($conn)
 {
    $conn -> close();
 }
?>