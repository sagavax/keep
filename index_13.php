<?php include("dbconnect.php"); ?>
<?php include("functions.php"); ?>


<?php 
	date_default_timezone_set('Europe/Bratislava');
 
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" type="text/css" href="style.css?<?php echo time(); ?>">
	<link href='https://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">

	<link rel="icon" type="image/png" href="keep.jpg">

		<title>Keep - quicknote</title>


<script language="JavaScript">  
        
        </script>
        
</head>
<body>
        
    <header>
		<div id="logo"><a href="."><span>My keep</span></a></div>
		<div class="search_box"><input type="text" name="search" id="search_string" autocomplete="off" onkeyup="search_notes(this.value)";></div>
		<div id="clock"><span style="position: relative; float: left; margin-left:15px; margin-top:15px"></span></div>
	</header>
	
	<div id="wall"> <!-- wall - list of created comments -->
		<div class="tags">
			<ul>
				<li class="notes"><span class="menu_icon"><i class="fas fa-lightbulb"></i></span><span class="menu_text">Poznamky</span></li>
				<li class="modify_tags"><span class="menu_icon"><i class="fas fa-pencil"></i></span><span class="menu_text">Upravit stitky</span></li>
				<!-- tag list-->
					<?php
						$get_tags = "SELECT DISTINCT tag_name from tags";
						$result=mysqli_query($db,$get_tags) or die("MySQL ERROR: ".mysqli_error($db));
						while ($row = mysqli_fetch_array($result)) {
							$tag = $row['tag_name'];
							echo "<li class=$tag><span class='menu_icon'><i class='fa-solid fa-tag'></i></span><span class='menu_text'>$tag_name</span><li>";
						}	
					?>
				<!--    -->	
				<li class="archive"><span class="menu_icon"><i class="fa-solid fa-box-archive"></i></span><span class="menu_text">Archiv</span></li>
				<li class="trash"><span class="menu_icon"><i class="fa-solid fa-trash-can"></i></span><span class="menu_text">Trash</span></li>
			</ul>	
		</div>
		<div class="container">
		<div id="action"><button type="button" onclick="add_new_note()">Add new note</button></div>
		<div id="wall-comment">
			<div class="wall-comment-container">
				<input type="text" placeholder="Titulok" autocomplete="off" id="keep-title">
				<textarea name="comment"  placeholder="Napisat poznamku...." maxlength="600" autocomplete="off" id="keep-text"></textarea>
				<div class="comment-action"><button type="button" onclick="save_note()">Save</button></div>
			</div>
		</div>
		<div id="keep-pinned">
			<div class="keep-pinned-header"><h4>Pinned</h4></div>
			<div class="keep-pinned-wrap">			
			<?php
				$sql="SELECT * from keep where is_pinned=1 ORDER BY date_updated DESC";
				$result=mysqli_query($db,$sql) or die("MySQL ERROR: ".mysqli_error($db));
					while ($row = mysqli_fetch_array($result)) {
						$note_id = $row['id'];
						$date_updated = $row['date_updated'];
						//$keep_group=$row['keep_group'];
						$keep_title = $row['diary_title'];
						$keep_text = $row['diary_text'];
						$date = $row ['date_updated'];
			
						echo "<div class='keep-note' note-id='$note_id'>";
						echo "<div class='keep-header'><span>".$keep_title."</span><div class='del'><a href='#' onclick='remove_note($note_id)'><i class='fa fa-times'></i></a><a href='#' onclick='unpine_note($note_id)'><i class='fa fa-thumbtack'></i></a></div></div>";
						echo "<article>" . makeLinks(nl2br($keep_text)) . "</article>
								<footer>$date</footer>
						</div>"; //zobraz ich ako FB wall

				} //end of while

			?>
			</div><!-- keep pinned wrap-->
		</div>
		<div id="keep-notes">
		
				<?php
			       $sql="SELECT *,TIME(date_updated) as time,DATE(date_updated) as date  from keep ORDER BY date_updated DESC";
				             // echo "$sql";
			    	$result=mysqli_query($db,$sql) or die("MySQL ERROR: ".mysqli_error($db));
						while ($row = mysqli_fetch_array($result)) {
	 					   $note_id = $row ['id'];
					  		$keep_title = $row['diary_title'];
					  		$keep_text=$row ['diary_text'];
							$date = $row ['date_updated'];
			   						//$actual_date = date('Y-m-d'); 
					      	  echo "<div class='keep-note' note-id='$note_id'>"; 
							  echo "<div class='keep-header'><span>".$keep_title."</span><div class='del'><a href='#' onclick='remove_note($note_id)'><i class='fa fa-times'></i></a><a href='#' onclick='unpine_note($note_id)'><i class='fa fa-thumbtack'></i></a></div></div>";
					      	   echo "<article>".makeLinks(nl2br($keep_text))."</article>
                           		<footer>$date</footer>
					        </div>"; //zobraz ich ako FB wall
							        
					} //end of while
				?>
			</div><!-- keep notes -->
			<div id="keep-search"></div>				
		</div>
		
	</div><div style="clear:both"></div>	
	<script src="keep.js"></script>	
</body>
</html>