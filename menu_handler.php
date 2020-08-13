<style type="text/css">

	.menu_items_holder{
		height: 200px;
		width:  255px;
		overflow-y: scroll;
		border: solid black 1px;
		border: none;
		padding: 20px;
	}

	#menu_items{
		background-color: white;
		height: 60px;
		width: 230px;
		border-bottom: solid 1px #BDC1C3;	
		border-left: solid 2px red;
	}

	#menu_items:hover{
		opacity: 80%;
	}
	
</style>

<?php

if (isset($_POST['category'])) {
	$category  = $_POST['category'];
	$conn      = mysqli_connect("localhost", "root", "", "epos");
	$request   = mysqli_query($conn, "SELECT * from menu where category = '$category' ");
	$count     = mysqli_num_rows($request);
	echo "<div class = 'menu_items_holder'>";
	for ($i=0; $i < $count ; $i++) { 
		$result = mysqli_fetch_array($request);
		echo "
				<form method = 'post'>
						<input  id = 'menu_items' type = 'submit' name = 'add_to_cart' value = '$result[2]'>
				</form>
		";
	}
	echo "</div>";
}


?>