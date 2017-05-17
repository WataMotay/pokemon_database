<?php
include("pokemon_stockpage.html");
$db = new PDO("mysql:Host=localhost;dbname=pokemon_database;","root", ""); //connect to the database tbh fam
?>

<html>
	<body>
	<p> Congrats! You successfully deleted an existing entry into the database</p>
	<?php
	delete();
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
function delete()
{
	$Name = $_GET["DName"]; 
	$sql = "DELETE FROM `pokemon` WHERE name = '$Name'";
	perform_query($sql);
	
	//echo($sql);
}	
?>
	
	</body>
</html>


<br>
<a href="admin.php"> If you would like to insert/delete another entry from the database, click this link </a>
<?php include("bottom.html"); ?>