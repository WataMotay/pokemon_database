<?php
include("pokemon_stockpage.html");
$db = new PDO("mysql:Host=localhost;dbname=pokemon_database;","root", ""); //connect to the database
?>

<html>
	<body>
	
	<br>
	<h2>Your query for what Evolution(s) you wanted to see was...</h2>
	<p>The following Evolution(s):</p>
	<?php
		print_pokemon();
	?>
	
	<h4>Name | Evolution Method | Evolves Into</h4>
	<p>Note: 1st stage pokemon with 3rd stage evolutions will get the entire line, showing in italic </p>
	<?php
		print_evolutions();
	?>
	
	
	<body>
</html>

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
function print_pokemon()
{
	$names = $_GET["Name"]; 
	?> 
	
	<ul> 
	<?php
		foreach($names as $name){
	?> 
		<li><?= $name ?></li>
	<?php 
	} 
	?> 
	</ul> 
	<?php 
}
?>

<?php
function print_evolutions()
{
	$evolutions = "'" . implode("', '", $_GET["Name"]) . "'";
	$sql = "SELECT * FROM `evolution` as E WHERE Name IN ($evolutions)"; 
	//echo($sql);
	$new_rows = perform_query($sql);	
	?> 
	
	<ul> 
	<?php
	foreach($new_rows as $rows){
	?>
		<li>
		<br>
		<b><?=$rows["E.Name"]?></b> | 
		<?= $rows["E.Evolution_method"]?> |
		<?= $rows["E.Evolves_Into"]?>	
		<?php 
			
			$evolves_into = $rows["E.Evolves_Into"];
			$sql2 = "SELECT * FROM `evolution` as E WHERE Name IN ('$evolves_into')";
			//echo($sql2);
			$new_rows2 = perform_query($sql2);
		?>
		<?php
		foreach($new_rows2 as $rows){
		?>
			<li>
			<i><?=$rows["E.Name"]?></i> | 
			<i><?= $rows["E.Evolution_method"]?></i> |
			<i><?= $rows["E.Evolves_Into"]?></i>		
			<!-- <br></br> -->
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
