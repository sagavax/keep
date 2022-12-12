<?php
include "dbconnect.php";
//var_dump($_POST);
$diary_text = mysqli_real_escape_string($db, $_POST['note_text']);
$diary_title = mysqli_real_escape_string($db, $_POST['note_title']);

$sql = "INSERT INTO keep (diary_title, diary_text, color_scheme, date_updated) VALUES ('$diary_title','$diary_text','default','" . date('Y-m-d H:i:s') . "')";

//$myfile = fopen("testfile.txt", "w");
fwrite($myfile, $sql);
$result = mysqli_query($db, $sql) or die("MySQL ERROR: " . mysqli_error($db));
