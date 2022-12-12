<?php
    include("dbconnect.php");
    var_dump($_POST);
    $diary_text =mysqli_real_escape_string($db,$_POST['note_text']);	

    $backgroud = "#fff";

    $sql="INSERT INTO keep (diary_text, date_updated) VALUES ('$diary_text','".date('Y-m-d H:i:s')."')";
    /*$myfile = fopen("testfile.txt", "w");
    fwrite($myfile, $sql);
    fclose($myfile);*/
    $result=mysqli_query($db,$sql) or die("MySQL ERROR: ".mysqli_error($db));
   

