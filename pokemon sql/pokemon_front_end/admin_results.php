<?php
include("pokemon_stockpage.html");
$db = new PDO("mysql:Host=localhost;dbname=pokemon_database;","root", ""); //connect to the database tbh fam
?>
<html>
	<body>
	<p> Test </p>
	
		<?php
		print_insert();
		?>
		
		<?php
		insert();
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
function print_insert() 
{
	$Name = $_GET["Name"]; 
	$Pokedex_ID = $_GET["Pokedex_ID"];
	$Height = $_GET["Height"];
	$Weight = $_GET["Weight"];
	$Can_evolve = $_GET["Can_evolve"];
	$Primary_type = $_GET["Primary_type"];
	$Secondary_type = $_GET["Secondary_type"];
	$Ability = $_GET["Ability"];
	//echo($Name . " " .  $Pokedex_ID . " " . $Height . " " . $Weight . " " . $Can_evolve . " " . $Primary_type . " " . $Secondary_type . " " . $Ability);
	?> 
	
	
	<?php 
}
?>

<?php
function insert()
{
	$Name = $_GET["Name"]; 
	$Pokedex_ID = $_GET["Pokedex_ID"];
	$Height = $_GET["Height"];
	$Weight = $_GET["Weight"];
	$Can_evolve = $_GET["Can_evolve"];
	$Primary_type = $_GET["Primary_type"];
	$Secondary_type = $_GET["Secondary_type"];
	$Ability = $_GET["Ability"];
	
  $sql = "INSERT INTO `pokemon`(`Name`, `Pokedex_ID`, `Height`, `Weight`, `Can_evolve`, `Primary_type`, `Secondary_type`, `Ability`)
			VALUES ('$Name',$Pokedex_ID,'$Height',$Weight,'$Can_evolve','$Primary_type','$Secondary_type','$Ability')
				ON DUPLICATE KEY
					UPDATE `Pokedex_ID` = $Pokedex_ID, `Height` = '$Height', `Weight` = $Weight, `Can_evolve` = '$Can_evolve', 
					`Primary_type` = '$Primary_type', `Secondary_type` = '$Secondary_type', `Ability` = '$Ability'";
				
  perform_query($sql);
  
  //echo($sql);
 
	
}

?>
	
	</body>
</html>
<a href="admin.php"> If you would like to add another entry to the database, click this link </a>
<?php include("bottom.html"); ?>