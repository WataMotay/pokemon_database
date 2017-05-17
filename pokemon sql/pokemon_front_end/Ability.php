<?php
include("pokemon_stockpage.html");
$db = new PDO("mysql:Host=localhost;dbname=pokemon_database;","root", ""); //connect to the database tbh fam
?>

<html>
	<head>
	<title>Pokemon Database Abilitydex</title>
	<link href="pokedex.css" type="text/css" rel="stylesheet" />	
	</head>
	
	<body>
	<p>Welcome to the Pokemon abilitydex -- get the description
		of any ability. (Coming soon: All pokemon with that
		ability!)
	</p>
		<form action="Ability_results.php" method="get">
		<h2> Abilities </h2>
		<select name="ability[]" size="5" multiple="multiple">
			<?php 
			$sql = "SELECT Ability FROM `abilities` ORDER BY Ability"; 
			$query = $db->prepare($sql); //prepares the query 
			$query->execute(); //runs the query 
			$rows = $query->fetchAll(); 
			foreach($rows as $row){
				$choice = $row["Ability"]; // *NOTE, CAPS MATTERS  
				?> 
				<option value="<?= $choice ?>"><?= $choice ?></option><?php 
				}
				?>
			</select>
			
		<div>
			<br>
			<input type="submit" value="Submit" /> 
		</div>
	</form>
	</body>
</html>
<?php include("bottom.html"); ?>