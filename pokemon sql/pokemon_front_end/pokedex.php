<?php
include("pokemon_stockpage.html");
$db = new PDO("mysql:Host=localhost;dbname=pokemon_database;","root", ""); //connect to the database tbh fam
?>

<html>
	<head>
	<title>Pokemon Database Pokedex</title>
	<link href="pokedex.css" type="text/css" rel="stylesheet" />	
	</head>
	
	<body>
	
	
	<p>Welcome to the Pokemon pokedex -- the web site for discriminating trainer
	needing info on all generation 1 pokemon! Use this section find information 
	about specific pokemon. </p>
	
	<form action="pokedex_results.php" method="get">
			<h2>Which Pokemon do you want to know more about?</h2>
		<div>
			<span class = "selectWrapper">
		
			<h3>Pokedex ID 001 - 030</h3>
			<select name="name[]" size="7" multiple="multiple">
			<?php //from here
			$sql = "SELECT Name FROM `pokemon` WHERE Pokedex_ID <= 30 ORDER BY `Pokedex_ID`"; 
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
			</span>
				
			<span class = "selectWrapper">
			<h3>Pokedex ID 031 - 060</h3>
			<select name="name[]" size="7" multiple="multiple">
			<?php //from here
			$sql = "SELECT Name FROM `pokemon` WHERE (Pokedex_ID <= 60 AND Pokedex_ID > 30) ORDER BY `Pokedex_ID`"; 
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
			</span>
		
			<span class = "selectWrapper">
			<h3>Pokedex ID 061 - 090</h3>
			<select name="name[]" size="7" multiple="multiple">
			<?php //from here
			$sql = "SELECT Name FROM `pokemon` WHERE (Pokedex_ID <= 90 AND Pokedex_ID > 60) ORDER BY `Pokedex_ID`"; 
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
			</span>
		
			<span class = "selectWrapper2">
			<h3>Pokedex ID 091 - 120</h3>
			<select name="name[]" size="7" multiple="multiple">
			<?php //from here
			$sql = "SELECT Name FROM `pokemon` WHERE (Pokedex_ID <= 120 AND Pokedex_ID > 90) ORDER BY `Pokedex_ID`"; 
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
			</span>
			
			<span class = "selectWrapper2">
			<h3>Pokedex ID 121 - 151</h3>
			<select name="name[]" size="7" multiple="multiple">
			<?php //from here
			$sql = "SELECT Name FROM `pokemon` WHERE (Pokedex_ID <= 151 AND Pokedex_ID > 120) ORDER BY `Pokedex_ID`"; 
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
			</span>
		</div>
		
	<div>
        <br>
		<input type="submit" value="Submit" /> 
    </div>
	</form>
	</body>	
</html>
<?php include("bottom.html"); ?>