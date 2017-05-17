<?php
include("pokemon_stockpage.html");
$db = new PDO("mysql:Host=localhost;dbname=pokemon_database;","root", ""); //connect to the database tbh fam
?>

<html>
	<head>
	<title>Pokemon Database Evolutiondex</title>
	<link href="poke_layout.css" type="text/css" rel="stylesheet" />
	</head>
	
	<body>
	<fieldset>
	<p> Add/Modify Pokemon to the Pokedex here! </p>
	<form action="admin_results_insert.php" method="get">
	
	Name: 			<input type="text" name="Name" maxlength = "20"><br><br>
	Pokedex_ID: 	<input type="text" name="Pokedex_ID" maxlength = "3"><br><br>
	Height(Requires format: ft''in"): 		<input type="text" name="Height" maxlength = "10"><br><br>
	Weight: 		<input type="text" name="Weight" maxlength = "5"><br><br>
	Can_evolve:
	<label><input type="radio" name ="Can_evolve" value = "Y" /> Yes </label>
	<label><input type="radio" name ="Can_evolve" value = "N" /> No </label>
	<br><br>
	Primary_type:	<input type="text" name="Primary_type" maxlength = "20"><br><br>
	Secondary_type: <input type="text" name="Secondary_type" maxlength = "20"><br><br>
	Ability: 		<input type="text" name="Ability" maxlength = "20"><br><br>
	
	<input type="submit"  value="Add pokemon to database"/>
	</fieldset>
	</form> 
	
	<fieldset>
	<form action="admin_results_delete.php" method="get">
	<p> Delete a Pokemon from the Pokedex here! </p>
	Name: 			<input type="text" name="DName" maxlength = "20"><br><br>
	<input type="submit"  value="Delete pokemon from database"/>
	</fieldset>
	</form>
	
	</body>
	
	
</html>
<?php include("bottom.html"); ?>