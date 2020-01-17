<?php
require_once("connection.php");
session_start();
$stdid=$_POST['stdid'];
$admno=$_POST['admno'];
$name=$_POST['name'];
$address=$_POST['address'];
$dob=$_POST['dob'];
$gender=$_POST['gender'];
$mobile=$_POST['mobile'];
$admdate=$_POST['admdate'];
$guardian=$_POST['guardian'];
$batch=$_POST['batch'];
$username=$_POST['username'];
$password=$_POST['password'];

if (isset($_POST['submit']))
{
	$sql="INSERT INTO studentreg(stdid,admno,name,address,dob,gender,mobile,admdate,guardian,batch,username,password)VALUES('".$stdid."','".$admno."','".$name."','".$address."','".$dob."','".$gender."','".$mobile."','".$admdate."','".$guardian."','".$batch."','".$username."','".$password."')";
	if(!$result=$conn->query($sql))
	{
		die('there was an error running in the query['.$conn->error.']');
    }
    else
	{
     echo"thank you";
	}
}
?>	
	