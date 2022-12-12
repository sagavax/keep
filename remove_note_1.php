<?php include("dbconnect.php"); 

$note_id = $_POST[note_id];
$sql="DELETE from keep where id=$note_id";
$result=mysqli_query($db,$sql) or die("MySQL ERROR: ".mysqli_error($db));