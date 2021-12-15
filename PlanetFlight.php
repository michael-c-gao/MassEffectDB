<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<html>
<head>
  <title>Planet Flight</title>
  </head>
  
  <body bgcolor="#E6E2EC">
  
  
  <hr>
  
  
<?php
  
$state = $_POST['state'];

$state = mysqli_real_escape_string($conn, $state);
// this is a small attempt to avoid SQL injection
// better to use prepared statements


$query = "SELECT CONCAT(Crew.CrewFName, ' ', Crew.CrewLName) AS PilotName, Spc.OriginPlanet, Spc.SpeciesName
FROM Crewmate Crew
JOIN SpaceShip Ship
ON Ship.ShipID = Crew.Pilots
JOIN Species Spc
ON Spc.SpeciesName = Crew.CrewSpecies
WHERE Spc.OriginPlanet =";
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
    print "|PilotName|OriginPlanet|SpeciesName|";
    print "\n_____________________________________________\n";
 
while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
  {
    print "$row[PilotName] | $row[OriginPlanet] | $row[SpeciesName]";
    print "\n_____________________________________________\n";
  }
print "</pre>";

mysqli_free_result($result);

mysqli_close($conn);

?>

<p>
<hr>

<p>
<a href="PlanetFlight.txt" >Contents</a>
of the PHP program that created this page. 	 
 
</body>
</html>
