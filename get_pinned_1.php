<?php
include("dbconnect.php");
//$pin_status = $_GET['pin_status'];
$note_id = $_GET['note_id'];
//check current status
$sql="SELECT is_pinned as curr_status from keep_new where id=$note_id";
$result=mysqli_query($db,$sql) or die("MySQL ERROR: ".mysqli_error($db));
$row = mysqli_fetch_array($result);

if($row['curr_status']==1){ // je pinned
    $sql="UPDATE keep_new SET is_pinned=0 WHERE id=$note_id";
    $result=mysqli_query($db,$sql) or die("MySQL ERROR: ".mysqli_error($db)); 
    return "0";

} elseif ($row['curr_status']==0) {// nie je pinned
    $sql="UPDATE keep_new SET is_pinned=0 WHERE id=$note_id";
    $result=mysqli_query($db,$sql) or die("MySQL ERROR: ".mysqli_error($db)); 
    return "1";
}