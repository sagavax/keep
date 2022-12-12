<?php
    include("dbconnect.php");
    //var_dump($_POST);
    $note_id = $_POST['note_id'];
    
    $sql="UPDATE keep SET is_archived = 1 where id = $note_id";
    $result=mysqli_query($db,$sql) or die("MySQL ERROR: ".mysqli_error($db));
   

