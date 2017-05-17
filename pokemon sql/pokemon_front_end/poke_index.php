<?php
include("pokemon_stockpage.html");
$db = new PDO("mysql:Host=localhost;dbname=pokemon_database;","root", ""); //connect to the database tbh fam
?>
<html>
	<body>

	<p>Welcome to the Pokemon pokedex -- the web site for discriminating trainer
	needing info on all generation 1 pokemon! Select the criteria for what type
	of pokemon you want to see, and we'll give you the pokemon that match those
	requirements!</p>
	
	<form action="poke_results.php" method="get">
		<div>
			<h2>Which type of Pokemon do you want?</h2>

			<select name="type[]" size="7" multiple="multiple">
			<option value="all" selected=true>All Types</option>  <!-- Figure this out later -->
			<?php //from here
			$sql = "SELECT Type FROM `type_effectiveness` ORDER BY `Type`"; 
			$query = $db->prepare($sql); //prepares the query 
			$query->execute(); //runs the query 
			$rows = $query->fetchAll(); 
			foreach($rows as $row){
				$choice = $row["Type"]; // *NOTE, CAPS MATTERS  
				?> 
				<option value="<?= $choice ?>"><?= $choice ?></option><?php 
				}
				?>
			</select>
		</div>
		
		<div>
			<h2>Which (if any) HM's do you want your Pokemon to be able to learn?</h2>

			<select name="Move_name[]" size="5" multiple="multiple">
			<option value="None" selected=true>Doesn't Matter</option>  <!-- Figure this out later -->
			<?php //from here
			$sql = "SELECT `Move_name` FROM `hm_moves` ORDER BY `Move_name`"; 
			$query = $db->prepare($sql); //prepares the query 
			$query->execute(); //runs the query 
			$rows = $query->fetchAll(); 
			foreach($rows as $row){
				$choice = $row["Move_name"]; // *NOTE, CAPS MATTERS  
				?> 
				<option value="<?= $choice ?>"><?= $choice ?></option><?php 
				}
				?>
			</select>
		</div>
	
	<div>
        <br>
		<input type="submit" value="Submit" /> 
    </div>
	</form>
  </body>
</html>
<?php include("bottom.html"); ?>