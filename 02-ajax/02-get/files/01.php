<?php
	echo '<h3>GET</h3>';
	echo'<pre>';
	// Biến $_GET là một mảng chứa các dữ liệu được truyền qua URL
	print_r ($_GET);
	echo '</pre>';
	
	echo '<h3>POST</h3>';
	echo'<pre>';
	print_r ($_POST);
	echo '</pre>';
?>