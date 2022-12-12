<?php
include "dbconnect.php";
include "functions.php";

$color_scheme = $_POST['color_scheme'];
$note_id = $_POST['note_id'];
$update_scheme = "UPDATE keep set color_scheme='$color_scheme' WHERE id=$note_id";
$result = mysqli_query($db, $update_scheme) or die("MySQL ERROR: " . mysqli_error($db));