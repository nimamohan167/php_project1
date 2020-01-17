<?php
require_once("connection.php");
session_start();
$name=$_POST['name'];
$todate=$_POST['todate'];
$leavereason=$_POST['leavereason'];
$fromdate=$_POST['fromdate'];



if (isset($_POST['submit']))
{
	$sql="INSERT INTO factapplyleave(name,todate,leavereason,fromdate)VALUES('".$name."','".$todate."','".$leavereason."','".$fromdate."')";
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
	