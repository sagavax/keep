<?php
include "dbconnect.php";
include "functions.php";

$sql = "SELECT * from keep WHERE is_pinned = 0 ORDER BY date_updated DESC";
// echo "$sql";
$result = mysqli_query($db, $sql) or die("MySQL ERROR: " . mysqli_error($db));
while ($row = mysqli_fetch_array($result)) {
	$note_id = $row['id'];
	$keep_title = $row['diary_title'];
	$keep_text = $row['diary_text'];
	$date = $row['date_updated'];
	$color_scheme = $row['color_scheme'];

	echo "<div class='keep-note $color_scheme' note-id='$note_id'>";
	echo "<div class='keep-header'><span>$keep_title</span><div class='note_action'><button type='button' onclick='pine_note($note_id)' class='pine_note' title='Pin note'><i class='fa fa-thumbtack'></i></button></div></div>";
	echo "<div class='keep-body'>" . makeLinks(nl2br(trim($keep_text))) . "</div>
                <div class='keep-tags'></div>
                              <div class='keep-footer'><div class='footer-action'><button class='pine_note' type='button' onclick='show_palette(this)' title='show color palette'><i class='fa fa-palette'></i></button><button class='pine_note' type='button' onclick='archive_note($note_id)' title='archive note'><i class='fa fa-box-archive'></i></button><button class='pine_note' type='button' onclick='add_tag($note_id)' title='label note'><i class='fa fa-tag'></i></button><button class='pine_note' type='button' onclick='clone_note($note_id)' title='clone note'><i class='fa fa-clone'></i></button><button class='pine_note' type='button' title='export note to Axoloth IS' onclick='export_note_axoloth_is($note_id)'><i class='fa fa-file-export'></i></button><button class='pine_note' type='button' title='delete note' onclick='remove_note($note_id)'><i class='fa fa-times'></i></button></div></div>
                  </div>"; //zobraz ich ako FB wall
} //end of while
?>