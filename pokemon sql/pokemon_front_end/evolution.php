<?php
include("pokemon_stockpage.html");
$db = new PDO("mysql:Host=localhost;dbname=pokemon_database;","root", ""); //connect to the database tbh fam
?>

<html>
	<head>
	<title>Pokemon Database Evolutiondex</title>
	<link href="pokedex.css" type="text/css" rel="stylesheet" />	
	</head>
	
	<body>
	<p>Welcome to the Pokemon Evolutiondex. Below are 
	all pokemon who are able to evolve. Click one one 
	to see how to evolve it, and what it evolves in to.
	(Coming Soon: 3 stage evolution link...)
	</p>
		<form action="evolution_results.php" method="get">
		<h2> Evolution </h2>
		<select name="Name[]" size="5" multiple="multiple">
			<?php 
			$sql = "SELECT DISTINCT Name FROM `evolution`"; 
			$query = $db->prepare($sql); //prepares the query 
			$query->execute(); //runs the query 
			$rows = $query->fetchAll(); 
			foreach($rows as $row){
				$choice = $row["Name"]; // *NOTE, CAPS MATTERS  
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