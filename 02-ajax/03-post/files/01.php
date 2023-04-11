<?php
	$course = array();
	$course[0] = array('id' => 1, 'name' => 'Zend Framwork');
	$course[1] = array('id' => 2, 'name' => 'Joomla');
	$course[2] = array('id' => 3, 'name' => 'PHP');
	// Kiểm tra nếu có key 
	if(isset($_POST['key'])) {
		// Thì trả về giá trị của key đó
		$result = $course[$_POST['key']];
		// Mã hóa dữ liệu trả về thành chuỗi JSON
		echo json_encode($result);
	}
?>