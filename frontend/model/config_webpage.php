<?php
// Định nghĩa các hằng số kết nối cơ sở dữ liệu
define('HOST', 'database-1.c1vao1bbmxs8.us-west-2.rds.amazonaws.com');
define('USERNAME', 'admin');
define('PASSWORD', '0333342584');
define('DATABASE', 'dvd_web');

// Tạo kết nối
$conn = new mysqli(HOST, USERNAME, PASSWORD, DATABASE);

// Kiểm tra kết nối
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>