<?php
 include("dbconnect.php");
 include("functions.php");
 
 $note_id = $_POST['note_id'];

 $restore_fron_trash = "INSERT into keep SELECT * from trash where id= $note_id";
 mysqli_query($db,$restore_from_trash) or die("MySQL ERROR: ".mysqli_error($db));

 $remove_from_trash = "DELETE from trash where id = $note_id";
 mysqli_query($db,$remove_from_trash) or die("MySQL ERROR: ".mysqli_error($db));

?>