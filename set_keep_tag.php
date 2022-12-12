<?php

include "dbconnect.php";

$note_id = $_POST['note_id'];
$tag_id = $_POST['tag_id'];


$update_tag = "UPDATE keep_tags SET tag_id = $tag_id WHERE note_id=$note_id;
$result = mysqli_query($db, $update_tags) or die("MySQL ERROR: " . mysqli_error($db));