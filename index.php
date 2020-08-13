<!DOCTYPE html>
<html>
<head>
	<title>ETC EPOS</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>


<body>
	
	<div class="billing_section">
		<div id="business_details">
			<strong><center><p>Hong's - Chinese Takeaway</p></center></strong>	
			<center><p>214 Whitby Road</p></center>
			<center><p>HA4 9QY</p>
		</div>
		<?php include "bill.php"?>
		<?php include "checkout_and_discounts.php";?>
	</div>

	<div id="search_section">
		<form method="post">
			<input type="text" placeholder="Search Menu" name="search" autocomplete="off">
			<img id = "search_icon" src="search_icon.png">
		</form>
	</div>

	<div id="category_header">
		<?php include "menu_category_handler.php";  ?>
		<?php include "menu_handler.php";?>
		<?php include "search_handler.php";?>
		<?php include "bill_handler.php";?>
	</div>

	<?php include "checkout_and_discount_handler.php";  ?>
	

</body>
</html>