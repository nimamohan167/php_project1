<?php
require_once("connection.php");
session_start();
$stdid=$_POST['stdid'];
$name=$_POST['name'];
$assessmentno=$_POST['assessmentno'];
$sub1mark=$_POST['sub1mark'];
$sub2mark=$_POST['sub2mark'];
$sub3mark=$_POST['sub3mark'];
$percentage=$_POST['percentage'];


if (isset($_POST['submit']))
{
	$sql="INSERT INTO studentmark(stdid,name,assessmentno,sub1mark,sub2mark,sub3mark,percentage)VALUES('".$stdid."','".$name."','".	$assessmentno."','".$sub1mark."','".$sub2mark."','".$sub3mark."','".$percentage."')";
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
	