<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<link rel="stylesheet" href="css/style3.css">
		<style>
		
		</style>  
	</head>
<body class="b1">
<div class="navbar">
<ul>
<li>Edit

<div class="submenu">
<ul>
<li><a href="password.php">Password</a></li>
<li><a href="mobile.php">Mobile</a></li>
<li><a href="email.php">Email</a></li>
</ul>
</div>
</li>
<li><a href="logout.php">Logout</a></li>
</ul>
</div>

			
		<div>
			<form action="student_pro_edit2.php" method=POST>
			<?php
						require_once 'connection.php';
						session_start();
						$var=$_SESSION['stdid'];
						$sql="select * from studentreg where stdid=$var";
						$result=mysqli_query($conn,$sql);
						while($row=mysqli_fetch_assoc($result))
						{
					?>
                <h1>Edit Profile</h1><br>
				
			
			
<table>
	<tr>
        <td>StudentId</td><td>:</td><td><input type="text" value=<?php echo $row['stdid'];?> name="stdid"></td>
    </tr>
	<tr>
        <td>AdmissionNo</td><td>:</td><td><input type="text" value=<?php echo $row['admno'];?> name="admno"></td>
    </tr>
    <tr>
        <td>Name</td><td>:</td><td><input type="text" value=<?php echo $row['name'];?> name="name"></td>
    </tr>
    <tr>
        <td>Address</td><td>:</td><td><input type="text" value=<?php echo $row['address'];?> name="address"></td>
    </tr>
	<tr>
        <td>DOB</td><td>:</td><td><input type="text" value=<?php echo $row['dob'];?> name="dob"></td>
    </tr>
 
    <tr>
        <td>Gender</td><td>:</td><td><input type="text" value=<?php echo $row['gender'];?> name="gender"></td>
    </tr>
    
    <tr>
        <td>Mobile</td><td>:</td><td><input type="text" value=<?php echo $row['mobile'];?> name="mobile"></td>
    </tr>
	<tr>
        <td>AdmissionDate</td><td>:</td><td><input type="text" value=<?php echo $row['admdate'];?> name="admdate"></td>
    </tr>
	<tr>
        <td>Guardian</td><td>:</td><td><input type="text" value=<?php echo $row['guardian'];?> name="guardian"></td>
    </tr>
    <tr>
        <td>Batch</td><td>:</td><td><input type="text" value=<?php echo $row['batch'];?> name="batch"></td>
    </tr>
    
	 <tr>
        <td>Username</td><td>:</td><td><input type="text" value=<?php echo $row['username'];?> name="username"></td>
    </tr
    <tr>
        <td>Password</td><td>:</td><td><input type="text" value=<?php echo $row['password'];?> name="password"></td>
    </tr>
</table>

           <?php
								}
							?>
             
            
<br>
<input type="submit" value="Save" name="submit" class="button">
</form>
        </div>
	</div>
	</body>
</html>
		