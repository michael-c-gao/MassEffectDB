<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<html>
<head>
  <title>Commander Weapons</title>
  </head>
  
  <body bgcolor="#E6E2EC">
  
  
  <hr>
  
  
<?php
  
$state = $_POST['state'];

$state = mysqli_real_escape_string($conn, $state);
// this is a small attempt to avoid SQL injection
// better to use prepared statements






$query = "SELECT W.WeaponID, W.WeaponName AS UseableWeapons, W.Damage AS DamagePerBullet,  
W.AmmoCapacity, (W.AmmoCapacity*W.Damage) AS TotalDmgPerMagazine
FROM Crewmate Crew
JOIN Commander Comm
ON Crew.CrewID = Comm.CrewID
JOIN Class Cl
ON Cl.CName = Comm.Class
JOIN Weapons W
ON W.WeaponType = Cl.PrimaryWeaponType
WHERE Crew.CrewLName =";
$query = $query."'".$state."' ORDER BY W.WeaponID;";

?>

<p>
The query:
<p>
<?php
print $query;
?>

<hr>
<p>
Result of query:
<p>

<?php
$result = mysqli_query($conn, $query)
or die(mysqli_error($conn));

print "<pre>";
    print "|WeaponID|WeaponName|DamagePerBullet|AmmoCapacity|TotalDmgPerMagazine";
     print "\n_______________________________________________________\n";
 
while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
  {
    print "$row[WeaponID] | $row[UseableWeapons] | $row[DamagePerBullet] | $row[AmmoCapacity] | $row[TotalDmgPerMagazine]";
    print  "\n_______________________________________________________\n";
 
  }
print "</pre>";

mysqli_free_result($result);

mysqli_close($conn);

?>

<p>
<hr>

<p>
<a href="CommanderWeapons.txt" >Contents</a>
of the PHP program that created this page. 	 
 
</body>
</html>
