<?php
	//Tạo biến có giá trị là chuỗi 
	$string = "This is a test";
	//Tạo mảng chứa phần tử là mảng
	$course = array(
		array('id' => 2, 'name' => 'Zend Framework'),
		array('id' => 3, 'name' => 'Jquery Master'),
		array('id' => 4, 'name' => 'Joomla'),
	);
	//Sử dụng hàm json_encode(Chuyền vào biến có dạng mảng) để chuyển đổi mảng thành chuỗi giống 04.html mảng có phần tử là đối tượng
	echo $courseEncode = json_encode($course);
?>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>Chuyển giá trị của biến php thành giá trị của biến javascript</title>
			<!-- //Thư viện này  ở json.org dùng để chuyển đổi chuỗi object thành object để dễ dàng lấy ra phần tử hơn  -->
			<script type="text/javascript" src="js/json2.js"></script>
			<script type="text/javascript">
				//Echo ra giá trị của php vào biến của javascript ta có giá trị mới của javascript
				var strtest = '<?php echo $string ?>';
				//Echo ra biến đã chuyển đổi
				var str = '<?php echo $courseEncode ?>';
				//Tạo biến mới dùng json trong thư viện có sẵn để chuyển dổi chuỗi object thành object 
				var myObject = JSON.parse(str);
				//Xuất ra từ phần từ có chỉ số 0 vào thuộc tính id lấy ra giá trị id đó
				console.log(myObject[0].id);
				//Xuất ra từ phần từ có chỉ số 0 vào thuộc tính name lấy ra giá trị name đó
				console.log(myObject[0].name);
			</script>
		</head>
		<body>

		</body>
	</html>