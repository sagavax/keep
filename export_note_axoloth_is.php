<?php

include "dbconnect.php";
include "functions.php";

$note_id = $_POST['note_id'];

$sql = "INSERT INTO eis.tblcustomer_notes (cust_id, cat_id, title, note,note_type,date_created) SELECT 0,0,diary_title, diary_text,'note', NOW() FROM keep WHERE id=$note_id";

$myfile = fopen("testfile.txt", "w");
fwrite($myfile, $sql);

$result = mysqli_query($db, $sql) or die("MySQL ERROR: " . mysqli_error($db));