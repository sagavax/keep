<?php
include "dbconnect.php";

$keep_id = $_POST['note_id'];

$set_archived = "update keep set is_archived=1 WHERE id = $keep_id";
$result = mysqli_query($db, $set_archived) or die("MySQL ERROR: " . mysqli_error($db));