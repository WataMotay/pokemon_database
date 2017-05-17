<?php
include("pokemon_stockpage.html");
$db = new PDO("mysql:Host=localhost;dbname=pokemon_database;","root", ""); //connect to the database tbh fam
?>
<html>
	<body>
	<br>
	
	<h2> The type(s) you selected were... </h2>
	<?php
		print_types();
	?>
	<h2>The type(s) that are super effective against (type goes here) are...</h2>
	<?php
		print_weakness();
	?>
	</body>

<?php
function perform_query($query){
	try{
	$db = new PDO("mysql:dbname=pokemon_database;host=localhost", "root");
	$db->setAttribute(PDO::ATTR_FETCH_TABLE_NAMES, true);
	$rows = $db->query($query); 	
	return $rows;
	} catch (PDOException $ex) {
	?>
	<p> Database error occurred <p/>
	<?php
	return NULL;
	}
}	 
?>

<?php
function print_types() 
{
	$types = $_GET["type"]; 
	?> 
	
	<ul> 
	<?php
		foreach($types as $type){
	?> 
		<li><?= $type ?></li>
	<?php 
	} 
	?> 
	</ul> 
	<?php 
}
?>

<?php
function print_weakness() 
{
	$types2 = "'" . implode("', '", $_GET["type"]) . "'"; ;
	
	$types = $_GET["type"]; 
	?> 
	
	<?php
		foreach($types as $type){
	?> 
		<?php 
			
			$sql = "SELECT Type from type_effectiveness as T Where $type >=2";
			//echo($sql . "<br>");
			$new_rows = perform_query($sql);
		?>
		
			<p> Types that are super effective against <b><i><?= $type ?></b></i> </p>
			<?php
			foreach($new_rows as $rows){
			?>
				<li>
				<b><?=$rows["T.Type"]?></b> 
				</li>
				
					<?php
					$curr_type = $rows["T.Type"];
					$sql2 = "SELECT Name FROM `pokemon` as P
						WHERE Primary_type = '$curr_type' or Secondary_type = '$curr_type'";
					//echo($sql2);
					$new_rows2 = perform_query($sql2);
					?>
			
						<?php
						foreach($new_rows2 as $rows){
						?>
							<?=$rows["P.Name"]?> | 
						<?php 
						} 
						?> 
			
			<?php 
			} 
			?> 
	<?php 
	} 
	?> 

	<?php 
}
?>
	
</html>