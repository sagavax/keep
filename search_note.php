<?php
 include("dbconnect.php");
 include("functions.php");

//var_dump($_GET);
$search_string=$_GET['search_string'];
 $search_string = mysqli_real_escape_string($db,$search_string);

 $search_note = "SELECT * from keep WHERE diary_text LIKE '%".$search_string."%'";
 //echo $search_note;
  $result=mysqli_query($db,$search_note) or die("MySQL ERROR: ".mysqli_error($db));
while ($row = mysqli_fetch_array($result)) {
      $note_id = $row ['id'];
        $date_updated=$row ['date_updated'];
      //$keep_group=$row['keep_group'];
      $keep_text=$row ['diary_text'];
    $actual_date = date('Y-m-d'); 
  
  if ($actual_date==$date_updated) { //ak je aktualny datum zhodny s datumom vkladania, zobraz iba cas 
    //$datumcas = $time_updated;
    $datumcas = $time_updated;
  } else {$datumcas = $date_updated;} //inac ho zobraz ako datum
  
  
      echo "<div class='keep-note' note-id='$note_id'>"; 
  echo "<div class='keep-header'><div class='del'><a href='#' onclick='remove_note($note_id)'><i class='fa fa-times'></i></a><a href='#' onclick='pine_note($note_id)'><i class='fa fa-thumbtack'></i></a></div></div>";
       echo "<article>".makeLinks(nl2br($keep_text))."</article>
                      <footer>$datumcas</footer>
            </div>"; //zobraz ich ako FB wall
  
} //end of while
?>