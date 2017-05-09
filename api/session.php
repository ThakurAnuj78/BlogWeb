<?php
// Establishing Connection with Server by passing server_name, user_id and password as a parameter
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blogweb";
// Create connection
$connection = mysqli_connect($servername, $username, $password, $dbname);
session_start();// Starting Session
// Storing Session
$user_check=$_SESSION['blogger_username'];
// SQL Query To Fetch Complete Information Of User
$ses_sql=mysql_query("select blogger_username from blogger_info where blogger_username='$user_check'", $connection);
$row = mysql_fetch_assoc($ses_sql);
$login_session =$row['blogger_username'];

?>