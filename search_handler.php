<style type="text/css">
	
</style>

<?php

if (isset($_POST['search'])) {
	$search = $_POST['search'];
	$conn      = mysqli_connect("localhost", "root", "", "epos");
	$request   = mysqli_query($conn, "SELECT * from menu where item_name like '%{$search}%' or category like '%{$search}%' ");
	$count     = mysqli_num_rows($request);
	echo "<div class = 'menu_items_holder'>";
	for ($i=0; $i < $count ; $i++) { 
		$result = mysqli_fetch_array($request);
		echo "
				<form method = 'post'>
						<input  id = 'menu_items' type = 'submit' value = '$result[2]' name = 'add_to_cart'>
				</form>
		";
	}
}


?>