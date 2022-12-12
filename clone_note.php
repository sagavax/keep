<?php
include "dbconnect.php";

$note_id = $_POST['note_id'];

$clone_note = "INSERT into keep (diary_title, diary_text,is_pinned,is_archived, color_scheme, date_updated) SELECT diary_title, diary_text,is_pinned,is_archived,color_scheme,NOW() from keep WHERE id=$note_id";
$result = mysqli_query($db, $clone_note) or die("MySQL ERROR: " . mysqli_error($db));