<?php
session_start();
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blogweb";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);


$sndr=$_POST['sender'];
$rcvr=$_POST['receiver'];
$msg=$_POST['msg'];
$sql = "INSERT INTO messages (sender,receiver,msg) VALUES ('$sndr','$rcvr','$msg')";
if (mysqli_query($conn, $sql)) {
    header('Location: user.php');    

} 
else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
	
mysqli_close($conn);
?>

