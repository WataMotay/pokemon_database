<?php
include("pokemon_stockpage.html");
$db = new PDO("mysql:Host=localhost;dbname=pokemon_database;","root", ""); //connect to the database
?>
<html>
	<body>
	
	<br>
	<h2>Your query for what type of pokemon you wanted to see was...</h2>
	<p>Pokemon with the following type(s):</p>
	
	<?php
		print_types();
	?>
	<p>That can learn these HM moves:</p>
	<?php
		print_hmMoves();
	?>
	
    <h2>Pokemon that fit your preferences are:</h2>
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
function print_hmMoves() 
{
	$mNames = $_GET["Move_name"];
	$sql
	?> 
	
	<ul> 
	<?php
		foreach($mNames as $mName){
	?> 
		<li><?= $mName ?></li>
	<?php 
	} 
	?> 
	</ul> 
	<?php 
}
?>

<?php
/*The following function is pretty insane, but the jist is
	that, instead of matching by rows, this matches by columns.
	So if there are a lot of values with 'Y', it will match by that..*/
function print_pokemon()
{
	$types = "'" . implode("', '", $_GET["type"]) . "'";
	$Move_names = "" . implode("', '", $_GET["Move_name"]) . "";
	$mNameArray = $_GET["Move_name"];
	$array_size = count($mNameArray);
	$i = 0;
	$move_array = "";
	$myString = "%s = 'Y' %s ";

	foreach($mNameArray as $result) {
		$i++;
		if($i < $array_size)
		{
			$move_array[$i] = sprintf($myString, $result, "AND");
		}
		else
		{
			$move_array[$i] =  sprintf($myString, $result, "");
		}
	}	
	$mArray = implode(" ", $move_array);
	
		if($types == "'all'" and $Move_names == "None")
		{
			$sql = "SELECT DISTINCT A.Name, A.Primary_type, A.Secondary_type 
					FROM `pokemon` as A"; 
		}
		else if($types == "'all'")
		{
		$sql = "SELECT DISTINCT A.Name, A.Primary_type, A.Secondary_type 
				FROM `can_learn_hm` as B, `pokemon` as A 
				WHERE $mArray   
				AND A.name = B.name";
		}	
		else if($Move_names == "None")
		{
		$sql = "SELECT DISTINCT A.Name, A.Primary_type, A.Secondary_type  
				FROM `can_learn_hm` as B, `pokemon` as A 
				WHERE (Primary_type IN ($types) OR Secondary_type IN ($types))  
				AND A.name = B.name";
		}
		else
		{
		$sql = "SELECT DISTINCT A.Name, A.Primary_type, A.Secondary_type  
				FROM `can_learn_hm` as B, `pokemon` as A 
				WHERE $mArray 
				AND (Primary_type IN ($types) OR Secondary_type IN ($types))  
				AND A.name = B.name";
		}
	/*
	$new_rows = perform_query($sql);
	//echo($sql);
	?> 
	
	<ul> 
	<?php
	foreach($new_rows as $rows){
	?> 
		<li><?= $rows["A.Name"]?> | <?=$rows["A.Primary_type"]?> | <?=$rows["A.Secondary_type"]?></li>
	<?php 
	} 
	?> 
	</ul> 
	*/
	//echo($sql);
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