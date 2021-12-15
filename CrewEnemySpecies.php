<?php

include('connectionData.txt');

$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
or die('Error connecting to MySQL server.');

?>

<html>
<head>
  <title>Crew Enemy Species</title>
  </head>
  
  <body bgcolor="#E6E2EC">
  
  
  <hr>
  
  
<?php
  
$state = $_POST['state'];

$state = mysqli_real_escape_string($conn, $state);
// this is a small attempt to avoid SQL injection
// better to use prepared statements




$query = " SELECT  E.EnemyID, CONCAT(E.EnemyFName, ' ', IFNULL(E.EnemyLName,''))  AS EnemyName, E.EnemyOrganization, A.Description FROM Enemy E
JOIN Species Spc
ON Spc.SpeciesName = E.EnemySpecies
JOIN Crewmate Crew
ON Crew.CrewSpecies = E.EnemySpecies
JOIN Affiliation A
ON A.Organization = E.EnemyOrganization
WHERE Crew.CrewLName =";
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
    print "|EnemyID|EnemyName|EnemyOrganization|OrgDescription";
    print "\n_______________________________________________________________________________________________________________________________________________\n";
while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
  {
    print "$row[EnemyID] | $row[EnemyName] | $row[EnemyOrganization] | $row[Description]";
    print "\n_______________________________________________________________________________________________________________________________________________\n";
   
 }
print "</pre>";

mysqli_free_result($result);

mysqli_close($conn);

?>

<p>
<hr>

<p>
<a href="CrewEnemySpecies.txt" >Contents</a>
of the PHP program that created this page. 	 
 
</body>
</html>
