<?php
 
//MySQLi Procedural
$conn = mysqli_connect(hostname: "localhost:3306",username: "root",password: "",database: "book_room_project");
if (!$conn) {
	die("Connection failed: " . mysqli_connect_error());
}
 
?>