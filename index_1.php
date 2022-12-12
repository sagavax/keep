<? ob_start(); ?>
<?php include("dbconnect.php"); ?>


<?php 
	date_default_timezone_set('Europe/Bratislava');
    if (isset($_POST['Add'])) { //add new keep
		$diary_text =htmlspecialchars($_POST['comment']);
		$keep_group=$_POST['keep_group'];	
		//echo "$diary_text";
		
		$sql="INSERT INTO keep (keep_group,diary_text,date_updated) VALUES ('$keep_group','$diary_text','".date('Y-m-d H:i:s')."')";
		echo "$sql";

		$result=mysql_query($sql) or die("MySQL ERROR: ".mysql_error());
				header('Location: index.php'); // presmeruje spat aby sa zbranilo vkladaniu duplicity
                     }

    

    if (isset($_POST['add_group'])) {//add new keep group

    	$group=$_POST['keep-group'];

    	$sql="INSERT INTO keep_group (group_name) VALUES ('$keep-group')";
    	$result=mysql_query($sql) or die("MySQL ERROR: ".mysql_error());
    	header('Location: index.php');

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
				  	$result=mysql_query($sql) or die("MySQL ERROR: ".mysql_error());
				  	while ($row = mysql_fetch_array($result)) {
				  		$group_name=$row['group_name'];
				  		echo "<li><a href='index.php?group_name=$group_name'>$group_name</a><a href='index.php?category=$group_name' alt='add new note to this group' class='add_link'>+</a></li>";
				  	}
				echo "<li><a href='index.php?action=Add class='add_icon'>+</a></li>";  	
			  	echo "</ul>"; //list of keep groups

			  	//click on add plus icon
			  	if ($_GET['action']) {echo "<li style='list-style:none'><input type='text' name='keep-group' value=''><button type='submit' name='add_group'>+</button></li>";}

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
							  	$result=mysql_query($sql) or die("MySQL ERROR: ".mysql_error());
							  	while ($row = mysql_fetch_array($result)) {
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
											//$sql='SELECT * from diary where date_added like "%'.$actual_date.'%" ORDER BY date_updated DESC'; // zober vsetky zaznamy ktore zodpovedaju aktulanemu datumu ;-)
				              //$sql="SELECT *,TIME(date_updated) as time from keep where DATE(date_updated)='$actual_date' ORDER BY date_updated DESC";
				              if (isset($keep_group)) {$sql="SELECT *,TIME(date_updated) as time,DATE(date_updated) as date  from keep WHERE keep_group='$keep_group' ORDER BY date_updated DESC";} else {
				              $sql="SELECT *,TIME(date_updated) as time,DATE(date_updated) as date  from keep ORDER BY date_updated DESC"; }
				             // echo "$sql";
							$result=mysql_query($sql) or die("MySQL ERROR: ".mysql_error());
							while ($row = mysql_fetch_array($result)) {
							        		$time_updated=$row ['time'];
											$date_updated=$row ['date'];
							        		$keep_text=$row ['diary_text'];
													
											$actual_date = date('Y-m-d'); 
											
											if ($actual_date==$date_updated) { //ak je aktualny datum zhodny s datumom vkladania, zobraz iba cas 
												//$datumcas = $time_updated;
												$datumcas = $time_updated;
											} else {$datumcas = $date_updated;} //inac ho zobraz ako datum
											
											
							        	  echo nl2br("<div class='keep-note'> 
							        	  		 	  		<article>$keep_text</article>
                                      									  <footer>$datumcas</footer>
							        	        </div>"); //zobraz ich ako FB wall
							        
									} //end of while
						?>
				</div><div style="clear:both"></div>
                	
			</div><div style="clear:both"></div>	
		</div><div style="clear:both"></div>		
	</div><div style="clear:both"></div>		
</body>
</html>