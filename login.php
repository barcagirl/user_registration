<html>
<head>
<title>LOGIN</title>
<body>
<form method="post" enctype="multipart/form-data" >
Username:<input type="text" name="usename"id="username">
<span id="unameerror" style="color: red"></span><br><br>
Password:<input type="password" name="password"id="password">
<span id="passworderror" style="color: red"></span><br><br>
<input type="submit" value="regist" name="button"onclick="return valid();"><br><br>
</form>
</body>
<html>

<?php
include 'connection.php';
if(isset($_POST['button']))
{
	$Username=$_POST['usename'];
	$Password=$_POST['password'];
	$result=mysqli_query($connection,"SELECT `Username`, `Password` 
	FROM registration_table WHERE  Username ='$Username'AND Password ='$Password'");
	if(mysqli_num_rows($result)==1)
	{
     header('location:logtable.php');
		
    }
    else
	{
        echo" <script>alert('You Have Entered Incorrect Password!');</script>";
        exit();
    }


}
?>

<script type="text/javascript">
	function valid()
	{
        var username=document.getElementById('username').value;
		var password=document.getElementById('password').value;
if (username=="")
{
  document.getElementById('unameerror').innerHTML="username required";
  return false;
}
if (password=="")
{
  document.getElementById('passworderror').innerHTML="password required";
  return false;
}


	}
</script>

