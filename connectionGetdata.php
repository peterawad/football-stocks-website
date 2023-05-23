<?php 
		$dbhost = "localhost";
		$dbuser = "root";
		$dbpass = "";
		$db = "footballstocks";
		$conn = new mysqli($dbhost, $dbuser, $dbpass,$db) or die("Connect failed: %s\n". $conn -> error);
		if(isset($_POST['playertxt']))
		{
			$plyrtxt = $_POST['playertxt'];
			$result=mysqli_query($conn,"select * from marketvaluedata where playerName='".$plyrtxt."'");
		}
		else if (isset($_POST['G']))
		{
			$M_Fbtn = $_POST['G'];
			if($M_Fbtn==0)
				$result=mysqli_query($conn,"select * from marketvaluedata where gender='M'");
			else
				$result=mysqli_query($conn,"select * from marketvaluedata where gender='F'");				
		}
		else if (isset($_POST['CURRENTTEAMselect']))
		{
			$currteam = $_POST['CURRENTTEAMselect'];
			$result=mysqli_query($conn,"select * from marketvaluedata where currentTeam='".$currteam."'");
		}
		else if(isset($_POST['TEAMLOCATIONselect']))
		{
			$team_loc = $_POST['TEAMLOCATIONselect'];
			$result=mysqli_query($conn,"select * from marketvaluedata where teamLocation='".$team_loc."'");
		}
		else if (!empty($_POST['teammangernselect']))
		{
			$team_mgr = $_POST['teammangernselect'];
			$result=mysqli_query($conn,"select * from marketvaluedata where teamManager='".$team_mgr."'");
		}
		echo "<table border='2'><tr>";
		echo "<td>playerName</td><td>dateOfBirth</td><td>gender</td><td>dateSignedUp</td><td>
			  currentTeam</td><td>teamLocation</td><td>teamManager</td><td>startOfContract</td><td>
			  contractDuration</td><td>gamesPlayedThisYear</td><td>gamesWon</td><td>FG1</td><td>
			  FG2</td><td>FG3</td><td>FG4</td><td>FG5</td><td>variation</td><td>conract</td></tr>";
		while($row=mysqli_fetch_array($result))
		{ 

			echo  '<tr><td>'.
				  $row['playerName'].'</td><td>'.$row['dateOfBirth'].'</td><td>'.$row['gender'].'</td><td>'.
				  $row['dateSignedUp'].'</td><td>'.$row['currentTeam'].'</td><td>'.$row['teamLocation'].'</td><td>'.
				  $row['teamManager'].'</td><td>'.$row['startOfContract'].'</td><td>'.
				  $row['contractDuration'].'</td><td>'.$row['gamesPlayedThisYear'].'</td><td>'.
				  $row['gamesWon'].'</td><td>'.$row['FG1'].'</td><td>'.$row['FG2'].'</td><td>'.
				  $row['FG3'].'</td><td>'.$row['FG4'].'</td><td>'.$row['FG5'].'</td>';
				  
			$conract= intval($row['startOfContract'])+intval($row['contractDuration'])-intval(date('Y'));
			$variation= $row['salary(£k/week)']*(($row['gamesWon']/$row['gamesPlayedThisYear'])*100)*$conract;
			echo '<td>'.$variation.'</td><td>'.$conract.'</td></tr>';
		}
		echo '</table>';

function CloseCon($conn) 
 {
    $conn -> close();
 }
?>