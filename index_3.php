<? ob_start(); ?>
<?php include("dbconnect.php"); ?>
<?php include("functions.php"); ?>


<?php 
	date_default_timezone_set('Europe/Bratislava');
    if (isset($_POST['Add'])) { //add new keep
		$diary_text =mysql_real_escape_string($_POST['comment']);
		$keep_group=$_POST['keep_group'];	
		//echo "$keep_group";
		if ($keep_group=='0') {$keep_group='Other';}  //ak si nevyberiem ziadnu grupu tak to hodi do skupiny Others
		$sql="INSERT INTO keep (keep_group,diary_text,date_updated) VALUES ('$keep_group','$diary_text','".date('Y-m-d H:i:s')."')";
		//echo "$sql";

		$result=mysqli_query($sql,$db) or die("MySQL ERROR: ".mysqli_error($db));
				header('Location: index.php',303,true); // presmeruje spat aby sa zbranilo vkladaniu duplicity */
                     }

    

    if (isset($_POST['add_group'])) {//add new keep group

    	$group=$_POST['keep-group'];

    	$sql="INSERT INTO keep_groups (group_name) VALUES ('$group')";
    	$result=mysqli_query($sql,$db) or die("MySQL ERROR: ".mysqli_error($db));
    	header('Location: index.php',303,true);

    } 
                     
		
	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="sk" lang="sk">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="" />
<link rel="stylesheet" type="text/css" href="style.css">

	<title>Keep - quicknote</title>
	<style>
		
	</style>
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
        
	<div id="middle_column">
		<header><div id="logo"><a href="."><span>My keep - <?php echo date('Y-m-d'); ?></span></a><div id="clock"><span style="position: relative; float: left; margin-left:15px; margin-top:15px"><script language="javascript">clock()</script></span></div></div></header>
		<div id="main_wrap">
		   <div id="left-side"><!--left content -->	 
					<?php  //basic date settings
							$date = date('Y-m-d');
							$date = isset($_GET['date']) ? $_GET['date'] : date('Y-m-d');
							$previous_date = date('Y-m-d', strtotime($date .' -1 day'));
							$next_date = date('Y-m-d', strtotime($date .' +1 day'));
						?>

			  <?php 
			  	echo "<ul>";	//list of keep groups
				  	echo "<li><a href='index.php'>All</a></li>"; //All groups
				  	$sql="SELECT group_name from keep_groups ORDER BY group_name";
				  	$result=mysqli_query($db,$sql) or die("MySQL ERROR: ".mysqli_error($db));
				  	while ($row = mysqli_fetch_array($result)) {
				  		$group_name=$row['group_name'];
				  		echo "<li><a href='index.php?group_name=$group_name'>$group_name</a></li>";
				  	}
				echo "<li><a href='index.php?action=Add class='add_icon'>+</a></li>";  	
			  	echo "</ul>"; //list of keep groups

			  	//click on add plus icon
			  	if ($_GET['action'])
			  	 {echo "<li style='list-style:none'><form action='' method='post' accept-charset='uft-8'><input type='text' name='keep-group' value=''><button type='submit' name='add_group'>+</button></form></li>";}

			  	//click on add button right to group name
			  	
			  ?>			
               <!--  <div id="date"><a href="index.php?date=<?php echo $previous_date; ?>">&#171;</a>  <?php echo $date; ?> <a href="index.php?date=<?php echo $next_date ?>">&#187;</a></div> --> <!--- aktualny datum  --> 
				
			</div><!--left content -->


			<div id="right-side"> <!-- right content -->
				<div id="wall-comment">
					<form accept-charset="utf-8" method="post" action="index.php">
					
						<?php
							
							echo "<select name='keep_group'>";	
							  	echo "<option value='0'>--- Choose group ---</option>";
							  	$sql="SELECT group_name from keep_groups ORDER BY group_name";
							  	$result=mysqli_query($db,$sql) or die("MySQL ERROR: ".mysqli_error($db));
							  	while ($row = mysqli_fetch_array($result)) {
							  		$group_name=$row['group_name'];
							  		echo "<option value='$group_name'>$group_name</option>";
									  	}
						  	echo "</select>";
						?>
						<textarea name="comment" autocomplete="off" id="text"></textarea><button type="submit" name="Add">Add</button>
					
					</form>	
				</div>
				<div id="wall"> <!-- wall - list of created comments -->
						
						<?php
						    $keep_group=$_GET['group_name'];
						    // echo $keep_group;
						    $actual_date = $date;
				              if (isset($keep_group)) {$sql="SELECT *,TIME(date_updated) as time,DATE(date_updated) as date  from keep WHERE keep_group='$keep_group' ORDER BY date_updated DESC";} else {
				              $sql="SELECT *,TIME(date_updated) as time,DATE(date_updated) as date  from keep ORDER BY date_updated DESC"; }
				             // echo "$sql";
							$result=mysqli_query($db,$sql) or die("MySQL ERROR: ".mysqli_error($db));
							while ($row = mysqli_fetch_array($result)) {
							        		$time_updated=$row ['time'];
											$date_updated=$row ['date'];
							        		$keep_group=$row['keep_group'];
							        		$keep_text=$row ['diary_text'];
											







											$actual_date = date('Y-m-d'); 
											
											if ($actual_date==$date_updated) { //ak je aktualny datum zhodny s datumom vkladania, zobraz iba cas 
												//$datumcas = $time_updated;
												$datumcas = $time_updated;
											} else {$datumcas = $date_updated;} //inac ho zobraz ako datum
											
											
							        	  echo "<div class='keep-note'> 
							        	  		 	  		<div class='del'><a href='#'>x</a></div>
							        	  		 	  		<article>".makeLinks(nl2br($keep_text))."</article>
                                      									  <footer>$datumcas<span style='float:right;margin-right:5px'>$keep_group</span></footer>
							        	        </div>"; //zobraz ich ako FB wall
							        
									} //end of while
						?>
				</div><div style="clear:both"></div>
                	
			</div><div style="clear:both"></div>	
		</div><div style="clear:both"></div>		
	</div><div style="clear:both"></div>		
</body>
</html>