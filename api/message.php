<?php
session_start();
?>
<html>
  <head>
		

    
	    <link rel="stylesheet" href="../css/profilestyle.css">
		<link rel="stylesheet" href="../css/min.1.0.2.css">


<style type="text/css">
.form-style-8{
    font-family: 'Open Sans Condensed', arial, sans;
    width: 300px;
    padding: 30px;
    background: #FFFFFF;
    margin: 50px auto;
    box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.22);
    -moz-box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.22);
    -webkit-box-shadow:  0px 0px 15px rgba(0, 0, 0, 0.22);

}
.form-style-8 h2{
    background: #4D4D4D;
    text-transform: uppercase;
    font-family: 'Open Sans Condensed', sans-serif;
    color: #797979;
    font-size: 18px;
    font-weight: 100;
    padding: 20px;
    margin: -30px -30px 30px -30px;
}
.form-style-8 input[type="text"],
.form-style-8 input[type="date"],
.form-style-8 input[type="datetime"],
.form-style-8 input[type="email"],
.form-style-8 input[type="number"],
.form-style-8 input[type="search"],
.form-style-8 input[type="time"],
.form-style-8 input[type="url"],
.form-style-8 input[type="password"],
.form-style-8 textarea,
.form-style-8 select 
{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    outline: none;
    display: block;
    width: 100%;
    padding: 7px;
    border: none;
    border-bottom: 1px solid #ddd;
    background: transparent;
    margin-bottom: 10px;
    font: 16px Arial, Helvetica, sans-serif;
    height: 45px;
}
.form-style-8 textarea{
    resize:none;
    overflow: hidden;
}
.form-style-8 input[type="button"], 
.form-style-8 input[type="submit"]{
    -moz-box-shadow: inset 0px 1px 0px 0px #45D6D6;
    -webkit-box-shadow: inset 0px 1px 0px 0px #45D6D6;
    box-shadow: inset 0px 1px 0px 0px #45D6D6;
    background-color: #2CBBBB;
    border: 1px solid #27A0A0;
    display: inline-block;
    cursor: pointer;
    color: #FFFFFF;
    font-family: 'Open Sans Condensed', sans-serif;
    font-size: 14px;
    padding: 8px 18px;
    text-decoration: none;
    text-transform: uppercase;
}
.form-style-8 input[type="button"]:hover, 
.form-style-8 input[type="submit"]:hover {
    background:linear-gradient(to bottom, #34CACA 5%, #30C9C9 100%);
    background-color:#34CACA;
}
	
	@import url(http://fonts.googleapis.com/css?family=Montserrat:400,700);

html{    background:url(background.jpg) no-repeat;
  background-size: cover;
  height:100%;
}
</style>


  </head>
  <body>

    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
      <header class="mdl-layout__header">
        <div class="mdl-layout__header-row">
       
          <span class="mdl-layout-title">BlogWeb</span>
          
          <div class="mdl-layout-spacer"></div>
          
          <nav class="mdl-navigation mdl-layout--large-screen-only">
            <a class="mdl-navigation__link" href="user.php">Home</a>
		<a class="mdl-navigation__link" href="message.php">Messages</a>
            <a class="mdl-navigation__link" href="post.php">Post</a>
			<a class="mdl-navigation__link" href="profile.php">Login As:<?php echo " ".$_SESSION["blogger_username"]?></a>
			<a class="mdl-navigation__link" href="../html/contact.html">Contact Us</a>
			<?php
           if($_SESSION["blogger_username"]=='admin')
            echo "<a class=\"mdl-navigation__link\" href=\"control.php\">Control Panel</a>";		   
			?>
			<a class="mdl-navigation__link" href="logout.php">Log Out</a>
			
		
           
          </nav>
        </div>
      </header>

<div class="form-style-8" align="center">
<div class="page-content">
<h2>SEND A MESSAGE!!!</h2>
  <form action="Send Message.php" enctype="multipart/form-data" method="post"  >
    <input type="text" name="receiver" placeholder="RECEPIENT" />
	<input type="hidden" name="sender" value="<?php echo $_SESSION["blogger_username"]; ?>" /><br></br>
     <textarea placeholder="MESSAGE" onKeyUp="adjust_textarea(this)" name="msg"></textarea><br></br>
    <input type="submit" value="SEND" />
  </form>
</div>
</div>
<br></br>
<br></br>
<br></br>
<br></br>

<span class="mdl-layout__header" align="center"><h4>INBOX</h4></span>
	
<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "blogweb";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
	
}

$d=$_SESSION["blogger_username"];
	$re="select * from messages where receiver='$d' order by date desc";		
		$rs = mysqli_query($conn,$re);
while ($row=mysqli_fetch_array($rs))
	{
$p=$row['sender'];
	$p1=$row['receiver'];
	$p2=$row['date'];
	$p3=$row['msg'];
	echo "</table>";
	echo "</br>";
	echo "<div class=\"form-style-8\">";
	echo" <table class=\"mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp\"  align=\"center\">";
       echo"  <tbody>";
       echo"<tr>";
       echo"<td class=\"mdl-data-table__cell--non-numeric\" align=\"center\">Sender: $p </td >";
       echo" <tr>";
        echo"  <td class=\"mdl-data-table__cell--non-numeric\"  align=\"center\">Message: $p3 </td>";
       echo" </tr>";
       echo" <tr>";
       echo" <td><form action=\"Send Message.php\" method=\"post\"><textarea placeholder=\"Message\" onKeyUp=\"adjust_textarea(this)\" name=\"msg\"></textarea><input align=\"left\" type=\"submit\"  value=\"Reply\"><input type=\"hidden\" name=\"sender\" value=\"$p1\"><input type=\"hidden\" name=\"receiver\" value=\"$p\"></form></td>";
          
       echo" </tr>";
      echo"</tbody>";
  echo" </table>";
	echo "</div>";	

}
?>
<script type="text/javascript">
//auto expand textarea
function adjust_textarea(h) {
    h.style.height = "20px";
    h.style.height = (h.scrollHeight)+"px";
}
</script>
</body>
</html>