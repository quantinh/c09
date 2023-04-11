<?php
	$username = $_POST['username'];
	$password = $_POST['password'];
	
	$message = array();
	if(empty($username)) {
		$message['username'] = 'Username không được rỗng';
	} else if($username != 'quantinh') {
		$message['username'] = 'Username không tồn tại';
	}
	
	if(empty($password)) {
		$message['password'] = 'Password không được rỗng';
	} else if($password != '123456') {
		$message['password'] = 'Password không đúng';
	}

	// echo '<pre>';
	// print_r($message);
	// echo '</pre>';
	
	$status = 'error';
	// Nếu trong mảng $message không có phần tử nào thì trả về status = success
	if(count($message) == 0) $status = 'success';
	// Mảng dữ liệu trả về trạng thái và thông báo
	$response = array(
				'status' => $status,
				'message'=> $message
	);
	echo $jsonString = json_encode($response);
?>