<?php
 include("dbconnect.php");
 include("functions.php");
 
 $sql="SELECT * from keep WHERE is_arcived = 1 ORDER BY date_updated DESC";
 // echo "$sql";
$result=mysqli_query($db,$sql) or die("MySQL ERROR: ".mysqli_error($db));
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
  echo "<div class='keep-header'><div class='del'><a href='#' onclick='remove_archived($note_id)'><i class='fa-solid fa-folder-arrow-up'></i></a></div></div>";
       echo "<article>".makeLinks(nl2br($keep_text))."</article>
                      <footer>$datumcas</footer>
            </div>"; //zobraz ich ako FB wall
  
} //end of while
?>