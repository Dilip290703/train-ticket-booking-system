<?php

function connect()
{
    $conn = new mysqli("localhost", "root", "", "otrsphp" , 3307);
    if (!$conn) die("Database is being upgrade!");
    return $conn;
}
$conn = connect();
if (!$conn) die("Under Construction!");

