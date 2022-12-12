<?php

include "dbconnect.php";

if (isset($_GET['note_id'])) {
	$note_id = $_GET['note_id'];

	$get_tags = "SELECT * from keep_tags WHERE note_id = $note_id";
} else {
	$get_tags = "SELECT * from keep_tags ORDER BY tag_name";
}
$result = mysqli_query($db, $get_tags) or die("MySQL ERROR: " . mysqli_error($db));
while ($row = mysqli_fetch_array($result)) {
	$tag_id = $row['tag_id'];
	$tag_name = $row['tag_name'];

	echo "<input type='checkbox' name='tags[]' value=$tag_name> onclick='set_tag(tag_id,$note_id')'";
}
