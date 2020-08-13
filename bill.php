<style type="text/css">
	
	li{
		list-style: none;
		font-family: Arial;
		margin-left: 5px;
		margin-bottom: 5px;
		
	}

	#billing_scroll{
		height: 50%;
		width: 100%;
		overflow-y: scroll;
	}

	p{
		font-family: arial;
	}

	#billing_section_end{
		border-bottom: 1px #BDC1C3 solid;
	}

</style>

<?php
		
		date_default_timezone_set('Europe/London');
		$date = date('d/m/Y h:i: a', time());

		$conn      = mysqli_connect("localhost", "root", "", "epos");
		$request   = mysqli_query($conn, "SELECT * from orders ORDER BY id desc");
		$count     = mysqli_num_rows($request);

		echo "<center><p>$date</p></center>";

		echo "<div id = 'billing_scroll'>";

		for ($i=0; $i < $count ; $i++) { 
			$result = mysqli_fetch_array($request);
			echo "<li>$result[1]</li>
				  <li style = 'margin-top:-20px; margin-left:200px'>£ $result[2]</li>
				";
		}
		$total_request = mysqli_query($conn, "SELECT SUM(item_price) from orders ");
		$total         = mysqli_fetch_array($total_request);
		$total 		   = round($total[0], 2);
		echo "</div>";
		echo "<strong><div id = 'billing_section_end'><p>Total: $total</p></div></strong>";
?>