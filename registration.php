<?php


include'connection.php';


if (isset($_POST['submit'])) 
{
	$name=$_POST['name'];
	$email=$_POST['email'];
	$gender=$_POST['gender'];
	$District=$_POST['District'];
    $phone=$_POST['phone'];
    $photo=$_FILES['upload']['name'];
    $email=$_POST['email'];
	$qualification=$_POST['qualification'];
	$username=$_POST['username'];
	$password=$_POST['password'];
    

	 $file_details=pathinfo($photo);
	 $file_ext=$file_details['extension'];
	 $file_name=str_replace(" ", "_", strtolower($name)).rand().'.'.$file_ext;

	 $qu=implode(",",$qualification );



	 mysqli_query($con,"INSERT INTO `example_login`(`username`, `password`) VALUES ('$username','$password')");

	 $login_id=mysqli_insert_id($con);


	 
	 mysqli_query($con,"INSERT INTO `form_example`( `login_id`, `name`, `email`, `gender`, `district`, `phone`, `photo`, `qualification`) VALUES ('$login_id','$name','$email','$gender','$District','$phone','$file_name','$qu')");
                                                                                                                                                                                                                                                                                                                                                              

    echo $name."<br>".$email."<br>".$gender."<br>".$District."<br>".$phone."<br>".$file_name."<br>".$qu."<br>".$username."<br>".$password."<br>";
}


?>






<html>
<head>
<title>form</title>
</head>
<body>
<form method="post" enctype="multipart/form-data">
Name:<input type="text" id="name" name="name" >
<span id="nameerror" style="color: red"></span><br><br>
Email:<input type="text" id="email" name="email">
<span id="emailerror" style="color: red"></span><br><br>
Gender:<input type="radio" value="MALE" id="gender"name="gender">MALE
               <input type="radio" value="FEMALE" id="gender" name="gender">FEMALE
               <span id="gendererror" style="color: red"></span><br><br>
District:<select id="district" name="District">
	<option value="wayanad">wayanad</option>
	<option value="ernakulam">ernakulam</option>
	<option value="kozhikode">kozhikode</option>
</select>
<span id="districterror" style="color: red"></span><br><br>
phone:<input type="number" id="phone" name="phone">
<span id="phoneerror" style="color: red"></span><br><br>
photo:<input type="file" name="upload"  id="fileselect">
<span id="photoerror" style="color: red"></span><br><br>
Qualification:<input type="checkbox" value="SSLC" id="qualification[]" name="qualification[]">SSLC
		<input type="checkbox" value="+2" id="qualification[]" name="qualification[]">+2
		<input type="checkbox" value="UG" id="qualification[]" name="qualification[]">UG
		<span id="qualificationerror" style="color: red"></span><br><br>
Username:<input type="text" id="username" name="username" >
<span id="unameerror" style="color: red"></span><br><br>
Password:<input type="password" id="password" name="password">
<span id="passworderror" style="color: red"></span><br><br>
<input type="submit" value="submit" id="submit" name="submit" onclick="return valid();" >
</form>
</body>
</html>






<script type="text/javascript">
	function valid()
	{
		
		var name=document.getElementById('name').value;
		var email=document.getElementById('email').value;
		var district=document.getElementById('district').value;
		var phone=document.getElementById('phone').value;
		var photo=document.getElementById('fileselect').value;

    var gender=document.getElementsByName('gender');
		var quali=document.getElementsByName('qualification[]');

		var username=document.getElementById('username').value;
		var password=document.getElementById('password').value;


if (name=="")
{
  document.getElementById('nameerror').innerHTML="name required";
  return false;
}

if (email==""||email.indexOf('@')==-1||email.indexOf('.')==-1)
{
  document.getElementById('emailerror').innerHTML="Email required";
  return false;
}




flag=0;

for(i=0;i<gender.length;i++)
{

if (gender[i].checked==true)
{
  flag=1;
  break;
}
}
if(flag==0)
{
  document.getElementById('gendererror').innerHTML="select a Gender ";
  return false;
}





if (district=="")
{
  document.getElementById('districterror').innerHTML="District required";
  return false;
}

if (phone==""||isNaN(phone)||phone.length>10)
{
  document.getElementById('phoneerror').innerHTML="incorrect number";
  return false;
}

if (photo=="")
{
  document.getElementById('photoerror').innerHTML=" photo required";
  return false;
}




flagb=0;

for(i=0;i<quali.length;i++)
{

if (quali[i].checked==true)
{
  flagb=1;
  break;
}
}
if(flagb==0)
{
  document.getElementById('qualificationerror').innerHTML="select qualification ";
  return false;
}




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

