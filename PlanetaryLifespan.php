<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<html>
<head>
  <title>Planetary Lifespan</title>
  </head>
  
  <body bgcolor="#E6E2EC">
  
  
  <hr>
  
  
<?php
  
$state = $_POST['state'];

$state = mysqli_real_escape_string($conn, $state);
// this is a small attempt to avoid SQL injection
// better to use prepared statements



$query ="SELECT Cr.CrewID, CONCAT(Cr.CrewFName, ' ', IFNULL(Cr.CrewLName,'')) AS CrewName, Cr.CrewAge, S.Lifespan_years AS AverageSpeciesLifespan,
 S.Lifespan_years - Cr.CrewAge AS LifespanRemaining, P.Temp_celcius FROM Planet P
JOIN Species S
ON S.OriginPlanet = P.PlanetName
JOIN Crewmate Cr
ON Cr.CrewSpecies = S.SpeciesName
WHERE P.Temp_celcius <";

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
    print "|CrewID|CrewName|CrewAge|AverageSpeciesLifespan|LifespanRemaining|TempCelcius";
    print "\n_____________________________________________\n";
 
while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
  {
    print "$row[CrewID] | $row[CrewName] | $row[CrewAge] | $row[AverageSpeciesLifespan] | $row[LifespanRemaining] | $row[Temp_celcius]";
    print "\n_____________________________________________\n";
 

  }
print "</pre>";
 
mysqli_free_result($result);

mysqli_close($conn);

?>

<p>
<hr>

<p>
<a href="PlanetaryLifespan.txt" >Contents</a>
of the PHP program that created this page. 	 
 
</body>
</html>
