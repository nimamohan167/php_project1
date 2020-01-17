<!DOCTYPE html>
<html>
<head>
<title></title>
<link rel="stylesheet" href="css/style4.css">

<style>
table,th,td{border:1px solid black;border-collapse:collapse}
</style>
</head>
<body class="b">
<div class="menubar">
<ul>
<li><a href="view.php">View Student</a></li>
<li><a href="logout.php">Logout</a></li>
</ul>
</div>
<div>

                
            <h1>faculty</h1>
            <table>
                <thead>
                    <tr>
                        <th>FacultyId</th>
                        
                        <th>Name</th>
                        <th>Address</th>
                        <th>DOB</th>
                        <th>Gender</th>
                        <th>Qualification</th>
                        
                        <th>Mobile</th>
                        <th>Assignesd_Batch</th>
                        <th>Username </th>
                        <th>Password</th>
                    </tr>

                </thead>
                <tbody>
                 
                    <?php
					require_once 'connection.php';
					$sql="select * from faculty";
					$result=mysqli_query($conn,$sql);
					while($row=mysqli_fetch_assoc($result))
					{
					?>
					
				<tr>
						<td><?php echo $row['factid'];?></td>
						
						<td><?php echo $row['name'];?></td>
						<td><?php echo $row['address'];?></td>
						<td><?php echo $row['dob'];?></td>
						<td><?php echo $row['gender'];?></td>
						<td><?php echo $row['qualification'];?></td>
						<td><?php echo $row['mobile'];?></td>
						<td><?php echo $row['assigned_batch'];?></td>
			
						<td><?php echo $row['username'];?></td>
						<td><?php echo $row['password'];?></td>
                    </tr>
				<?php
					}
					?>
						
                </tbody>
            </table>

        </div>
    </div>
    </body>
</html>
        



