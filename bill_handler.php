<style type="text/css">
	
</style>

<?php

	//Adding billing details to the database using insert
	if (isset($_POST['add_to_cart'])) {
		$item_name = $_POST['add_to_cart'];
		$conn      = mysqli_connect("localhost", "root", "", "epos");
		$request   = mysqli_query($conn, "SELECT * from menu where item_name = '$item_name'");
		$count     = mysqli_num_rows($request);

		for ($i=0; $i < $count ; $i++) { 
			$result     = mysqli_fetch_array($request);
			$item_price = $result[3];

			mysqli_query($conn,"INSERT into orders (id, item_name, item_price, discount, `date`) values ('','$item_name', '$item_price', '0', '$date')");
			
		}
	echo "<meta http-equiv='refresh' content='0'>";
	}


?>