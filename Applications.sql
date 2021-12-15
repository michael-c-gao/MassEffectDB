-- Note: these are the applications for my program. These queries are not meant to be ran on their own in MySQL; these queries are
--to be used in conjuction with PHP where the user input will be placed after the '=' in the WHERE clause for each application.


-- Application 1: In Mass Effect, weapon types are restricted based on the characters class, i.e., only specific charaters can use specific guns. Please enter the last name of a Normandy Commander, and this query will return the character's useable weapons.
SELECT W.WeaponID, W.WeaponName AS UseableWeapons, W.Damage AS DamagePerBullet, 
W.AmmoCapacity, (W.AmmoCapacity*W.Damage) AS TotalDmgPerMagazine
FROM Crewmate Crew
JOIN Commander Comm
ON Crew.CrewID = Comm.CrewID
JOIN Class Cl
ON Cl.CName = Comm.Class
JOIN Weapons W
ON W.WeaponType = Cl.PrimaryWeaponType
WHERE Crew.CrewLName = 

--Application 2: Does home planet make any difference on flying ability aboard the Normandy? To find out, enter a planet name, and the query will return all capable pilots aboard the Normandy.
SELECT CONCAT(Crew.CrewFName, ' ', Crew.CrewLName) AS PilotName, Spc.OriginPlanet, Spc.SpeciesName
FROM Crewmate Crew
JOIN SpaceShip Ship
ON Ship.ShipID = Crew.Pilots
JOIN Species Spc
ON Spc.SpeciesName = Crew.CrewSpecies
WHERE Spc.OriginPlanet =

--Application 3: In Mass Effect, you travel across the galaxy with a diverse crew consisting of dozens of different species. However, there are just as many species that seek to thwart your adventures. Enter a crewmate last name, and this query will return all enemies of the same species as your desired crewmate.  


SELECT  E.EnemyID, CONCAT(E.EnemyFName, ' ', IFNULL(E.EnemyLName,''))  AS EnemyName, E.EnemyOrganization, A.Description FROM Enemy E
JOIN Species Spc
ON Spc.SpeciesName = E.EnemySpecies
JOIN Crewmate Crew
ON Crew.CrewSpecies = E.EnemySpecies
JOIN Affiliation A
ON A.Organization = E.EnemyOrganization
WHERE Crew.CrewLName = 



--Application 4: It's important a commander be well equiped before going into battle, and this means its important he knows all about his guns. Input a commander's class and the query will return the average damage and ammo capacity of the useable weapon type that the commander can use.  

SELECT Comm.CrewID, CONCAT(Cr.CrewFName, ' ', Cr.CrewLName) AS CommanderName, dmgQuery.avgDMG, dmgQuery.avgAmmo, weaponType FROM Class Cl
JOIN (SELECT AVG(Wd.Damage) AS avgDMG, AVG(Wd.AmmoCapacity) AS avgAmmo, Wd.WeaponType AS weaponType FROM Weapons Wd
GROUP BY Wd.WeaponType) AS dmgQuery
ON Cl.PrimaryWeaponType = dmgQuery.weaponType
JOIN Commander Comm
ON Comm.Class = Cl.CName
JOIN Crewmate Cr
ON Cr.CrewID = Comm.CrewID
WHERE Cl.CName = 


--Application 5: On planet Earth, there have been studies that show that animals that live in colder environments live longer than those in warmer locales. Is this true amongst the Mass Effect Crew? Enter a temperature in Celcius and the query will return all crewmates who are from planets that are colder than the specified input.

SELECT Cr.CrewID, CONCAT(Cr.CrewFName, ' ', IFNULL(Cr.CrewLName,'')) AS CrewName, Cr.CrewAge, S.Lifespan_years AS AverageSpeciesLifespan,
 S.Lifespan_years - Cr.CrewAge AS LifespanRemainingYears FROM Planet P
JOIN Species S
ON S.OriginPlanet = P.PlanetName
JOIN Crewmate Cr
ON Cr.CrewSpecies = S.SpeciesName
WHERE P.Temp_celcius < 
