<?php
include("pokemon_stockpage.html");
$db = new PDO("mysql:Host=localhost;dbname=pokemon_database;","root", ""); //connect to the database tbh fam
?>
<html>
	<body>
	
	<form action="typechart_results.php" method="get">
		<div>
			<h2>Which type Weaknesses do you want?</h2>

			<select name="type[]" size="7" multiple="multiple">
			<option value="all" selected=true>All Types</option>  <!-- Figure this out later -->
			<?php //from here
			$sql = "SELECT Type FROM `type_effectiveness` ORDER BY `type_effectiveness`.`Type` ASC "; 
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
        <br>
		<input type="submit" value="Submit" /> 
    </div>
	
	</form>
	</body>
</html>

<?php include("bottom.html"); ?>
	