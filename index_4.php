<?php include("dbconnect.php"); ?>
<?php include("functions.php"); ?>


<?php 
	date_default_timezone_set('Europe/Bratislava');
 
    

    if (isset($_POST['add_group'])) {//add new keep group

    	$group=$_POST['keep-group'];

    	$sql="INSERT INTO keep_groups (group_name) VALUES ('$group')";
    	$result=mysqli_query($sql,$db) or die("MySQL ERROR: ".mysqli_error($db));
    	header('Location: index.php',303,true);

    } 
                     
		
	
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="stylesheet" type="text/css" href="style.css">
	<link href='https://fonts.googleapis.com/css?family=Noto+Sans:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">

	<link rel="icon" 
		type="image/png" 
		href="keep.jpg">

		<title>Keep - quicknote</title>


<script language="JavaScript">  
         function checklength(i){  
                if (i<10){  
                 i="0"+i;}  
                 return i;  
         }  
         function clock(){  
           var now = new Date();  
           var hours = checklength(now.getHours());  
           var minutes = checklength(now.getMinutes());  
           var seconds = checklength(now.getSeconds());  
           var format = 1;  //0=24 hour format, 1=12 hour format  
           var time;  
          
           if (format == 1){  
             if (hours >= 12){  
               if (hours ==12){  
                 hours = 12;  
               }else {  
                 hours = hours-12;  
               }  
              time=hours+':'+minutes+':'+seconds+' PM';  
             }else if(hours < 12){  
                  if (hours ==0){  
                    hours=12;  
                  }  
              time=hours+':'+minutes+':'+seconds+' AM';  
             }  
           }  
          if (format == 0){  
             time= hours+':'+minutes+':'+seconds;  
          }  
          document.getElementById("clock").innerHTML=time;  
          setTimeout("clock();", 500);  
         }  
  
		 
        </script>
        
</head>
<body>
        
    	<header><div id="logo"><a href="."><span>My keep - <?php echo date('Y-m-d'); ?></span></a><div id="clock"><span style="position: relative; float: left; margin-left:15px; margin-top:15px"><script language="javascript">clock()</script></span></div></div></header>
		<div id="main_wrap">
		   	    <div id="action"><button type="button" onclick="add_new_note()">Add new note</button></div>
				<div id="wall-comment">
						<textarea name="comment" autocomplete="off" id="keep-text" onblur="save_note()"></textarea>
				</div>
				<div id="wall"> <!-- wall - list of created comments -->
						
						<?php
						   
						    // echo $keep_group;
						   // $actual_date = $date;
				              
				              $sql="SELECT *,TIME(date_updated) as time,DATE(date_updated) as date  from keep ORDER BY date_updated DESC";
				             // echo "$sql";
							$result=mysqli_query($db,$sql) or die("MySQL ERROR: ".mysqli_error($db));
							while ($row = mysqli_fetch_array($result)) {
							        		$note_id = $row ['id'];
											$time_updated=$row ['time'];
											$date_updated=$row ['date'];
							        		//$keep_group=$row['keep_group'];
							        		$keep_text=$row ['diary_text'];
			   						$actual_date = date('Y-m-d'); 
											
											if ($actual_date==$date_updated) { //ak je aktualny datum zhodny s datumom vkladania, zobraz iba cas 
												//$datumcas = $time_updated;
												$datumcas = $time_updated;
											} else {$datumcas = $date_updated;} //inac ho zobraz ako datum
											
											
							        	  echo "<div class='keep-note' note-id='$note_id'>"; 
							        	  echo "<div class='del'><a href='#' onclick='remove_note($note_id)'><i class='fa fa-times'></i></a><a href='#' onclick='pine_note($note_id)'><i class='fa fa-thumbtack'></i></a></div>";
							        	 echo "<article>".makeLinks(nl2br($keep_text))."</article>
                                      									  <footer>$datumcas</footer>
							        	        </div>"; //zobraz ich ako FB wall
							        
									} //end of while
						?>
				</div><div style="clear:both"></div>
                	
			</div><div style="clear:both"></div>	
		</div><div style="clear:both"></div>		
	</div><div style="clear:both"></div>	
	<script>
		document.getElementById("wall-comment").style.display="none";

		function add_new_cat(){

			var x = document.getElementById("new_group");
			if (x.style.display === "none") {
				x.style.display = "flex";
			} else {
				x.style.display = "none";
			}
		 }

		function add_new_note(){
			var x = document.getElementById("wall-comment");
			if (x.style.display === "none") {
				x.style.display = "block";
			} else {
				x.style.display = "none";
			}
		 }

		 function save_note(){
			 var group = document.getElementById("keep-group").value;
			 var text = document.getElementById("keep-text").value;
			 var data = "&note_group="+group+"&note_text="+encodeURIComponent(text);
             console.log(group);   
			 console.log(text);
			 console.log(data);

			if(text==""){
				document.getElementById("wall-comment").style.display="none";
			} else {
				const xhttp = new XMLHttpRequest();
					xhttp.onload = function() {
						reload_notes();
					}
					
				xhttp.open("GET", "create_note.php?note_group="+group+"&note_text="+encodeURIComponent(text));
				xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
				//var data = "&video_id=" + encodeURIComponent(video_id) + "&video_comment=" + encodeURIComponent(new_note);
				xhttp.send();
				//xhttp.send("note_group="+group+"&note_text="+encodeURIComponent(text));
	 }
	}
		 
		 function reload_notes(){
			var xhttp = new XMLHttpRequest();
				xhttp.onreadystatechange = function() {
					if (this.readyState == 4 && this.status == 200) {
						document.getElementById("wall").innerHTML = this.responseText;
					}
					};

				xhttp.open("GET", "reload_notes.php", true);
				xhttp.send();
		 }

		 function get_pinned(note_id){
			//var note_id = this.getAttribute('note-id');
			const xhttp = new XMLHttpRequest();
					xhttp.onload = function() {
					  reload_pinned();								
					}
					
				xhttp.open("GET", "get_pinned?note_id="+note_id+"&is_pinned=1");
				//xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
				//var data = "&video_id=" + encodeURIComponent(video_id) + "&video_comment=" + encodeURIComponent(new_note);
				xhttp.send();
		 }

		 function get_pinned(note_id){
			//var note_id = this.getAttribute('note-id');
			const xhttp = new XMLHttpRequest();
					xhttp.onload = function() {
						reload_pinned();
					}
					
				xhttp.open("GET", "get_pinned?note_id="+note_id);
				//xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
				//var data = "&video_id=" + encodeURIComponent(video_id) + "&video_comment=" + encodeURIComponent(new_note);
				xhttp.send();
		 }


		 function remove_note(note_id){

		 }

		 function check_pin_status(note_id){

		 }
	</script>	

</body>
</html>