<style>
	#categ_buttons{
		float: left;
		height: 60px;
		width: 147px;
	}

</style>

<?php

$conn      = mysqli_connect("localhost", "root", "", "epos");
$request   = mysqli_query($conn, "SELECT * from menu_categories");
$count     = mysqli_num_rows($request);

for ($i=0; $i < $count ; $i++) { 
	$response = mysqli_fetch_array($request);
	echo "<form method = 'post'><input id = 'categ_buttons' type = 'submit' name = 'category' value = '$response[1]' style='background-color:$response[2]'></form>";
}

?>