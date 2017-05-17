<?php
include("pokemon_stockpage.html");
$db = new PDO("mysql:Host=localhost;dbname=pokemon_database;","root", ""); //connect to the database
?>

<html>
	<body>
	
	<br>
	<h2>Your query for what Ability(s) you wanted to see was...</h2>
	<p>The following Ability(s):</p>
	
	<?php
		print_abilities();
		print_pokemon($ability);
	?>
	
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

function print_abilities()
{
	$abilitys = "'" . implode("', '", $_GET["ability"]) . "'";
	$sql = "SELECT * FROM `abilities` as A WHERE Ability IN ($abilitys)";
	$new_rows = perform_query($sql);
	global $ability;	
	?> 
	
	<ul> 
	<?php
	foreach($new_rows as $rows){
	?> 
		<?php $ability[] = $rows["A.Ability"]; ?>
		<li>
		<b><?=$rows["A.Ability"]?></b>: 
		<?= $rows["A.Description"]?> 	
		</li>
	<?php 
	} 
	//print_r(array_values($ability));
	?> 
	</ul> 
	<?php 
}
?>

<?php
/*Note: The following function can get everyone 
	pokemon with 
*/
function print_pokemon($ability)
{
	//$ability = "'%" . implode("%', '%", $_GET["ability"]) . "%'";
	
	$abilitys = "'" . implode("', '", $_GET["ability"]) . "'";
	//$sql = "SELECT * FROM `pokemon` as P Where Ability IN ($abilitys)"; //Get all data in 'pokemon where an ability is one of the abilities the user selected
	//$new_rows = perform_query($sql);
	//echo($sql);
	?> 
		
	<ul> 
	<?php
	foreach($ability as $rows){
	?> 	
	
	<?php 
		/*The following is pretty sweet; it runs an sql query for every ability selected,
			then gets the name of the pokemon with that ability. So, for example, if I selected
			4 abilities, this bit of code will run 4 times, and get all pokemon with any of
			the abilities selected. It even works if a pokemon has access to two abilities.*/
		$sql2 = "SELECT Name FROM `pokemon` as P Where Ability LIKE '%" . $rows . "%'"; 
		//echo($sql2);
		$new_rows2 = perform_query($sql2);
	?>
	
		<b> <?php echo("Pokemon who can have the ability ". ($rows) . "<br>"); ?> </b>
		
		<?php
		foreach($new_rows2 as $rows){
		?> 
		<li>
		<?= $rows["P.Name"]?> 	
		</li>
		
		<?php 
		} 
		?> 
		
	<?php 
	}
?>
</ul> 
<?php
}
?>
<?php include("bottom.html"); ?>