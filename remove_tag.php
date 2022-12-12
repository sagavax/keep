<?php

include "dbconnect.php";

//remove tag from all notes
$remove_tag_from_keeps = "DELETE from keep_tags WHERE tag_id=$tag_id";
$result = mysqli_query($db, $remove_tag_from_keeps) or die("MySQL ERROR: " . mysqli_error($db));

//remove tag from list of tags
$remove_tag = "DELETE from tags WHERE tags WHERE tag_id";
$result = mysqli_query($db, $remove_tag) or die("MySQL ERROR: " . mysqli_error($db));