<?php
	echo '<h3>method GET</h3>';
	echo'<pre>';
	print_r ($_GET);
	echo '</pre>';
	
	echo '<h3>method POST</h3>';
	echo'<pre>';
	print_r ($_POST);
	echo '</pre>';

	// biến __FILE__ trả về đường dẫn tuyệt đối của file đang chạy hiển thị trên url tới file hiện tại đang chứa nội dung
	// echo '<h1>'.__FILE__.'</h1>';
?>