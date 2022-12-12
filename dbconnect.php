<?php
/*
 * Core file for library and parameter handling:
 *
 * - $LastChangedDate: 2009-12-09 23:39:18 +0100 (Mi, 09 Dez 2009) $
 * - $Rev: 276 $
 */

// include("config/config.php");

  $dbname     = "keep"; 
  $dbserver   = "localhost"; 
  $dbuser     = "root"; 
  $dbpass     = ""; 


// --- Connect to DB, retry 5 times ---
for ($i = 0; $i < 5; $i++) {
	
    $db = mysqli_connect("$dbserver", "$dbuser", "$dbpass",$dbname);
    $errno = mysqli_errno($db);
    if ($errno == 1040 || $errno == 1226 || $errno == 1203) {
        sleep(1);
    }  else {
        break;
    }
}

//mysqli_select_db($db,"keep");

//
// Setup the UTF-8 parameters:
// * http://www.phpforum.de/forum/showthread.php?t=217877#PHP
//
// header('Content-type: text/html; charset=utf-8');
mysqli_query($db,"SET CHARACTER SET utf8");
//mysqli_query("SET NAMES `utf8`");

                 

?>
