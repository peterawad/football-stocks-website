<?php 
		$dbhost = "localhost";
		$dbuser = "root";
		$dbpass = "";
		$db = "footballstocks";
		if(!empty($_Post['usrLgntxt']))	
		{	
			$conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
			$result=mysqli_query($conn,"select * from adminlogin where username='".$_Post['usrLgntxt']."' AND password='".$_Post['usrLgnpass']."'");
			while($row=mysqli_fetch_array($result))
			{ 
				echo "alert Welcome Mr";
				echo "tmam";
				header("Location: localhost/index.html");
				exit();
			}
		}
		else
		{
				echo "<script>alert('wrong msg')</script>";
		}				
function CloseCon($conn) 
 {
    $conn -> close();
 }
?>
</head>