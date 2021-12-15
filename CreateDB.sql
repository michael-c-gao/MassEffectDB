-- SpaceShip Table
CREATE TABLE SpaceShip (
 ShipID INT NOT NULL,
 ShipName VARCHAR(50) NOT NULL,
 ShipType VARCHAR(50) NOT NULL,
 Weapons VARCHAR(50),
 CrewCapacity INT,
 PRIMARY KEY (ShipID));
 
 -- Weapons Table
 CREATE TABLE Weapons (
 WeaponID INT NOT NULL,
 WeaponName VARCHAR(50) NOT NULL,
 Manufacturer VARCHAR(50),
 Damage DECIMAL(6,2),
 AmmoCapacity INT,
 WeaponType VARCHAR(50),
 PRIMARY KEY (WeaponID));
 
 -- Planet Table
 CREATE TABLE Planet (
 PlanetName VARCHAR(50) NOT NULL,
 GalaxyLocation VARCHAR(30) NOT NULL,
 Temp_celcius INT NOT NULL,
 DayLength_hours DECIMAL(5,2) NOT NULL,
 Radius_km INT NOT NULL,
 OrbitalPeriod_earth_years DECIMAL(5,2),
 AtmosphericPressure_atm INT,
 PRIMARY KEY (PlanetName));
 
 -- Species Table
 CREATE TABLE Species (
 SpeciesName VARCHAR(50) NOT NULL,
 Lifespan_years INT NOT NULL,
 FTLDiscoveryYear INT,
 Specialty VARCHAR(50),
 OriginPlanet VARCHAR(50),
  FOREIGN KEY (OriginPlanet) REFERENCES Planet(PlanetName),
 PRIMARY KEY (SpeciesName));
 
 -- Class Table
 CREATE TABLE Class (
CName VARCHAR(50) NOT NULL,
CStyle VARCHAR(50) NOT NULL,
PrimaryWeaponType VARCHAR(50) NOT NULL,
PrimaryAbility VARCHAR(50) NOT NULL,
Description VARCHAR(255) NOT NULL,
 PRIMARY KEY (CName));
 
 -- Armor Table
 
 CREATE TABLE Armor (
ArmorName VARCHAR(50) NOT NULL,
ArmorEffect VARCHAR(100) NOT NULL,
BodyLocation VARCHAR(30) NOT NULL,
Cost INT,
Description VARCHAR(500) NOT NULL,
 PRIMARY KEY (ArmorName));
 
 -- Affiliation Table
 CREATE TABLE Affiliation (
Organization VARCHAR(50) NOT NULL,
Leader VARCHAR(50),
Methodology VARCHAR(50),
Description VARCHAR(500) NOT NULL,
Location VARCHAR(50) NOT NULL,
 PRIMARY KEY (Organization));
 
 -- Enemy Table
 CREATE TABLE Enemy (
 EnemyID INT NOT NULL,
 EnemyFName VARCHAR(20) NOT NULL,
 EnemyLName VARCHAR(20),
 EnemyOrganization VARCHAR(50) NOT NULL,
 EnemySpecies VARCHAR(50) NOT NULL,
FOREIGN KEY (EnemySpecies) REFERENCES Species(SpeciesName),
FOREIGN KEY (EnemyOrganization) REFERENCES Affiliation(Organization),
 PRIMARY KEY (EnemyID));
 
 -- Crewmate Table
 CREATE TABLE Crewmate (
 CrewID INT NOT NULL,
 CrewFname VARCHAR(25) NOT NULL,
 CrewLname VARCHAR(25),
 CrewAge INT NOT NULL,
 Job VARCHAR(50) NOT NULL,
CrewSpecies VARCHAR(50),
Pilots INT,
FOREIGN KEY (Pilots) REFERENCES SpaceShip(ShipID),
FOREIGN KEY (CrewSpecies) REFERENCES Species(SpeciesName),
 PRIMARY KEY (CrewID));
 
 -- Commander Table
 CREATE TABLE Commander (
 CrewID INT NOT NULL,
 Rank VARCHAR(4),
 Gender VARCHAR(1),
 Background VARCHAR(20),
 Class VARCHAR(20),
Wears VARCHAR(20),
Uses INT,
FOREIGN KEY (Class) REFERENCES Class(CName),
FOREIGN KEY (CrewID) REFERENCES Crewmate(CrewID),
FOREIGN KEY (Wears) REFERENCES Armor(ArmorName),
FOREIGN KEY (Uses) REFERENCES Weapons(WeaponID),
 PRIMARY KEY (CrewID));
