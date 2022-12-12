<?php

include "dbconnect.php";
$tag_name = $_GET['tag_name'];


$serch_tag = "SELECT * from keep_tags WHERE tag_name '%".tag_name."%'"