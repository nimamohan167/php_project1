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

                
            <h1>students</h1>
            <table>
                <thead>
                    <tr>
                        <th>StudentId</th>
                        <th>AdmissionNo</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>DOB</th>
                        <th>Gender</th>
                        <th>Mobile</th>
                        <th>AdmissionDate</th>
                        <th>Guardian</th>
                        <th>Batch</th>
                        <th>Username </th>
                        <th>Password</th>
                    </tr>

                </thead>
                <tbody>
                 
                    <?php
					require_once 'connection.php';
					$sql="select * from studentreg";
					$result=mysqli_query($conn,$sql);
					while($row=mysqli_fetch_assoc($result))
					{
					?>
					
				<tr>
						<td><?php echo $row['stdid'];?></td>
						<td><?php echo $row['admno'];?></td>
						<td><?php echo $row['name'];?></td>
						<td><?php echo $row['address'];?></td>
						<td><?php echo $row['dob'];?></td>
						<td><?php echo $row['gender'];?></td>
						<td><?php echo $row['mobile'];?></td>
						<td><?php echo $row['admdate'];?></td>
						<td><?php echo $row['guardian'];?></td>
						<td><?php echo $row['batch'];?></td>
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
        



