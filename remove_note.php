<?php include "dbconnect.php";

//copy to trash
var_dump($_GET);
//$note_id = $_POST[note_id];
$note_id = $_GET[note_id];
$copy_to_trash = "INSERT INTO trash SELECT * from keep where id=$note_id";
echo $copy_to_trash;
$result = mysqli_query($db, $copy_to_trash) or die("MySQL ERROR: " . mysqli_error($db));

//remove from notes
$sql = "DELETE from keep where id=$note_id";
$result = mysqli_query($db, $sql) or die("MySQL ERROR: " . mysqli_error($db));

?>