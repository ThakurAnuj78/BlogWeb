<?php
session_start(); // Starting Session
$error=''; // Variable To Store Error Message
if (isset($_POST['submit'])) {
if (empty($_POST['username']) || empty($_POST['password'])) {
header("location: loginf.php");
}
else
{
// Define $username and $password

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blogweb";
// Create connection
$connection = mysql_connect($servername, $username, $password);
$db = mysql_select_db($dbname, $connection);
// To protect MySQL injection for Security purpose
$username=$_POST['username'];
$password=$_POST['password'];
$username = stripslashes($username);
$password = stripslashes($password);
$username = mysql_real_escape_string($username);
$password = mysql_real_escape_string($password);
// SQL query to fetch information of registerd users and finds user match.
$sql = "select * from blogger_info where blogger_password='$password' AND blogger_username='$username'";
$query = mysql_query($sql,$connection);
$rows1 = mysql_num_rows($query);
if ($rows1 == 1) {

$row = mysql_fetch_array($query); 


$_SESSION["blogger_username"]=$row["blogger_username"];
$_SESSION["blogger_id"]=$row["blogger_id"];
$p=$row['blogger_is_active'];
if($p=='yes')
header("location: user.php"); // Redirecting To Other Page
else 
echo "this";
//header("location: ../html/loginf.html");
}
else
echo "this1";	//header("location: ../html/loginf.html");

mysql_close($connection); // Closing Connection
}
}
?>