<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<html>
<head>
  <title>Weapon Info</title>
  </head>
  
  <body bgcolor="#E6E2EC">
  
  
  <hr>
  
  
<?php
  
$state = $_POST['state'];

$state = mysqli_real_escape_string($conn, $state);
// this is a small attempt to avoid SQL injection
// better to use prepared statements


$query = " SELECT Comm.CrewID, CONCAT(Cr.CrewFName, ' ', Cr.CrewLName) AS CommanderName, dmgQuery.avgDMG, dmgQuery.avgAmmo, weaponType FROM Class Cl
JOIN (SELECT AVG(Wd.Damage) AS avgDMG, AVG(Wd.AmmoCapacity) AS avgAmmo, Wd.WeaponType AS weaponType FROM Weapons Wd
GROUP BY Wd.WeaponType) AS dmgQuery
ON Cl.PrimaryWeaponType = dmgQuery.weaponType
JOIN Commander Comm
ON Comm.Class = Cl.CName
JOIN Crewmate Cr
ON Cr.CrewID = Comm.CrewID
WHERE Cl.CName =";
$query = $query."'".$state."';";

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
    print "|CrewID|CommanderName|avgDmg|avgAmmo|weaponType|";
    print "\n______________________________________________________________\n";
 

while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
  {
    print "$row[CrewID] | $row[CommanderName] | $row[avgDMG] | $row[avgAmmo] | $row[weaponType]";
    print "\n______________________________________________________________\n";
 
  }
print "</pre>";
    
mysqli_free_result($result);

mysqli_close($conn);

?>

<p>
<hr>

<p>
<a href="WeaponInfo.txt" >Contents</a>
of the PHP program that created this page. 	 
 
</body>
</html>
