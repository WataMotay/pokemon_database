<?php
include("pokemon_stockpage.html");
$db = new PDO("mysql:Host=localhost;dbname=pokemon_database;","root", ""); //connect to the database
?>

<html>
	<body>
	
	<br>
	<h2>Your query for what pokemon you wanted to see was...</h2>
	<p>The following Pokemon:</p>
	
	<?php
		print_names();
	?>
	
    <h2>Pokemon that fit your preferences are:</h2>
	<!-- <h3>Name | PID | Height(ft) | Weight(lbs) | Primary_type | Secondary_type | Ability</h3> -->
	<?php
		print_pokemon();
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
function print_names() 
{
	$names = $_GET["name"]; 
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
function print_pokemon()
{
	$names = "'" . implode("', '", $_GET["name"]) . "'";
	
	$sql = "SELECT * FROM `pokemon` as p WHERE name IN ($names) ORDER BY `Name`";
	/*
	$new_rows = perform_query($sql);
	//echo("Name | PID | Height(ft) | Weight(lbs) | Primary_type | Secondary_type | Ability");
	?> 
	
	<ul> 
	<?php
	foreach($new_rows as $rows){
	?> 
		<li>
			<?= $rows["p.Name"]?> | <?= $rows["p.Pokedex_ID"]?> | <?= $rows["p.Height"]?> |
			<?= $rows["p.Weight"]?> | <?= $rows["p.Primary_type"]?> | <?= $rows["p.Secondary_type"]?> |
			<?= $rows["p.Ability"]?>
		</li>
	<?php 
	} 
	
	</ul> 
	*/
	?>
	
	
	<?php 
	function print_table($query){
		print "<table border=1>\n";
		$total = $query->columnCount();
		for($counter = 0; $counter<$total; $counter++){
			$meta = $query->getColumnMeta($counter);
			print "<th>{$meta['name']}</th>\n";
			$coln[$counter] = $meta['name'];
		}
		$rows = $query->fetchAll();
		foreach($rows as $row){
			print "<tr>\n";
			for($counter = 0; $counter<$total; $counter++){
				print "<td>{$row[$coln[$counter]]}</td>\n";
			}
			print "</tr>\n";
		}
		print "</table>\n";	
	}
	$db = new PDO("mysql:Host=localhost;dbname=pokemon_database;","root", "");
	//print "<br>" . $sql . "<br>";//displays the sql query
	$query = $db->prepare($sql); //prepares the query
	$query->execute();           //runs the query
	print_table($query);
	?> 
	<ul> 
	<?php
		foreach($query as $quere){
	?> 
		<li><?= $quere ?></li>
	<?php 
	} 
	?> 
	</ul> 
	<?php 
}
?>
<?php include("bottom.html"); ?>
