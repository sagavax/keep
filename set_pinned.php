<?php
include "dbconnect.php";
//var_dump($_POST);
//var_dump($_GET);
$note_id = $_POST['note_id'];
//$note_id = $_GET['note_id'];

$sql = "UPDATE keep SET is_pinned = 1 where id = $note_id";
$result = mysqli_query($db, $sql) or die("MySQL ERROR: " . mysqli_error($db));
