<style type="text/css">

	#checkout_and_discounts{
			background-color: #E1E8EC;
			height: 60px;
			width: 180px;
			border-bottom: solid 1px #BDC1C3;	
			border-left: solid 2px red;
	}

	#checkout_and_discounts:hover{
			opacity: 90%;
	}

</style>

<?php

echo "
				<form method = 'post'>
						<input  id = 'checkout_and_discounts' type = 'submit' name = 'checkout' value = 'Checkout'>
						<input  id = 'checkout_and_discounts' type = 'submit' name = 'discounts' value = 'Discount'>
				</form>
";

?>