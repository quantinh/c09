<?php
	$course = array();
	$course[0] = array('id' => 1, 'name' => 'Zend Framework');
	$course[1] = array('id' => 2, 'name' => 'Joomla');
	$course[2] = array('id' => 3, 'name' => 'PHP');
	
	// key : 2
	if(isset($_GET['key'])) {
		$result = $course[$_GET['key']];
		// hiển thị và mã hóa thành chuỗi JSON 2
		echo json_encode($result);
	}
?>