<?php
$mysqli = new mysqli("mysql", "root", "admin2test", "test");

// Check connection
if ($mysqli->connect_errno) {
	echo "Failed to connect to MySQL: " . $mysqli->connect_error;
	echo "<br><br><br><br>";
}

phpinfo();