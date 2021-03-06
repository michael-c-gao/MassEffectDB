-- Affiliation Values
INSERT INTO Affiliation	
VALUES
	('Blue Suns','Vido Santiago','Mercenary Group','The Blue Suns are a "private security organization," in reality a mercenary outfit, operating in the Skyllian Verge. The Blue Suns have a reputation for being both discreet and ruthlessly efficient, and as such charge a sizable fee.','Skyllian Verge'),
	('Blood Pack','Ganar Yulaz','Mercenary Group','The Blood Pack are a mercenary group primarily composed of krogan troops and vorcha cannon fodder. They prefer simple and brutish solutions to conflicts that come their way: beating enemies into submission.','Skyllian Verge'),
    ('Eclipse','Jona Sederis', 'Mercenary Group', 'Eclipse is a mercenary corporation that was founded by asari commando Jona Sederis. The organization provides effective security and firepower for prospective employers; they have few scruples about the nature of those who hire them, so long as they can afford their services.','Omega'),
 ('Systems Alliance', 'David Anderson', 'Human Government', 'The Systems Alliance is the representative body of Earth and all human colonies in Citadel space. Backed by Earths most powerful nations, the Alliance has become humanitys military, exploratory, and economic spearhead.', 'Earth Alliance Space'),
    ('Citadel Council', 'Tevos', 'Galatic Government', 'The Citadel Council is the governing body of the Citadel. Convening in the impressive Citadel Tower, the Council is the ultimate authority in Citadel space, passing judgement for violations of Council law and maintaining law and order', 'Milky Way'),
    ('Salarian Union', 'Dalatrass Linron', 'Salarian Government', 'The Salarian Union, also known as the Old Salarians and the Salarian Separatist, was the governing body of the Salarians of Nasurn and its colonies.', 'Attican Traverse'),
    ('Batarian Hegemony', NULL, 'Batarian Government', 'The Batarian Hegemony, known more officially as the Hegemony of Kharshan, is the sole government of the batarian people as recognized, but no longer affiliated with, the Citadel Council.', 'Skyllian Verge'),
('Citadel Security Services', 'Executor Pallin', 'Citadel Law Enforcement', 'C-Sec handles law enforcement on the Citadel. It is a volunteer police service answering to the Citadel Council,', 'Citadel'),
('Reaper', NULL, 'Reaper','The Reapers are a highly-advanced machine race of synthetic-organic starships.', 'Intergalactic Dark Space'),
('Cerberus', 'Illusive Man', 'Human Paramilitary Group', 'Cerberus supports the principle that any methods of advancing humanitys ascension are entirely justified, including illegal or dangerous experimentation, terrorist activities, sabotage and assassination.', 'Earth Alliance Space');

-- Armor Values
INSERT INTO Armor
VALUES
	('N7 Helmet', 'Increases health by 5%', 'Head', NULL, 'Dual layer of fabric armor and kinetic padding within a lightweight ablative ceramic shell. Comes standard with a suite of communication, navigation, and battlefield awareness software.' ),
    ('Kuwashii Visor', 'Increases headshot damage by 10%', 'Head', 2000, 'Developed by Ariake Technologies, the wearer exchanges full protective coverage for visibility, unencumbered mobility, and increased accuracy.'),
    ('Recon Hood', 'Increases weapon damage by 5%', 'Head', NULL,'A hood issued to covert action teams, this models optic display interfaces with most small arms auto-targeting software, linking hand and eye for improved accuracy and increased weapon damage. Ballistic-mesh fabric and composite ceramic plating provide necessary armor, and the integral air filter helps in hostile environments.'),
    ('N7 Chestplate', 'Increases power damage by 3%.', 'Chest', NULL,'Interlocking plates of thick, ablative ceramic plates. Designed to be light, effective, and easily repaired.'),
    ('Capacitor Chestplate', 'Reduces the delay before your shields start regenerating by 10%.', 'Chest', 4000, 'Micro wells developed by Armax Arsenal store part of the energy directed at the armor and use it to jump start the kinetic barrier recharge cycle.'),
('Kestrel Torso Sheath', 'Increases melee damage by 10%, Increases weapon damage by 5% ,Increases shield strength by 3%', 'Chest', 10000, 'The Kestrel armor system spinal-mount processor synchronizes artificial torso muscle fibers with limb movements, allowing power to be generated by the legs, channeled through the core, and projected out through the arms. Stabilization of the firing platform assists in autotargeting, and waist-mounted capacitors add to the power of kinetic barriers.' ),
('N7 Greaves', 'Increases shield strength by 3%.', 'Legs', NULL, 'Dual layer of fabric armor and kinetic padding beneath thick plates of ablative ceramic and lined with additional kinetic barrier emitters.'),
    ('Ordnance Packs', 'Increases spare heavy weapon ammo by 10%.', 'Legs', 2000, 'Co-developed by the Rahael Group and Beckmann Financial to solve the issue of munitions storage for Heavy Weapon class engagement tools.'),
    ('N7 Gauntlets', 'Increases health by 3%', 'Arms', NULL, 'A combination of fabric armor with kinetic padding and plates of ablative ceramic for protection.'),
    ('Heavy Damping Gauntlets', 'Increases shields by 5%', 'Arms', 4000, 'Armax Arsenal added micro-harmonic oscillators to reduce stress on the kinetic barriers ensuring suit integrity when faced with oncoming projectiles.');

-- Class Values
INSERT INTO Class(CName, CStyle,PrimaryWeaponType,PrimaryAbility,Description)
VALUES
	('Adept', 'Biotic', 'Pistol', 'Singularity', 'Adepts are durable and powerful manipulators of mass effect fields; they can use biotics to violently manipulate objects in the environment'),
    ('Soldier', 'Offense', 'Assault Rifle', 'Adrenaline Rush', 'Soldiers are pure combat specialists: no one is tougher or more suited to taking down enemies with barrages of gunfire.'),
    ('Engineer', 'Support', 'SMG', 'Combat Drone', 'Engineers are tech specialists, the most effective class at disabling the defense of the toughest enemies or incapacitating them to render them harmless.'),
    ('Vanguard', 'Biotic', 'Shotgun', 'Biotic Charge', 'The Vanguard is a powerful combatant, able to combine the offensive powers of the Adept and the Soldier.'),
    ('Sentinel', 'Tank', 'Pistol', 'Tech Armor', 'The Sentinel class combines both tech expertise and an aptitude for biotics. They are able to equip both biotic amp and omni-tool models specialized for combat.' ),
    ('Infiltrator', 'Stealth', 'Sniper', 'Tactical Cloak', 'Infiltrators are tech and combat specialists with the unique ability to cloak themselves from visual and technological detection. ');


-- Planet Values
INSERT INTO Planet
VALUES
('Earth','Sol System', 23,23.9, 6378, 1,1),
 ('Thessia', 'Parnitha System', 25, 27.6, 5940, 0.9, 0.96),
 ('Rannoch', 'Tikkun System', 48, 32.3, 6021, 0.64, 0.93),
 ('Tuchanka', 'Aralakh System', 72, 21.4, 8293, 16.7, 1.1),
 ('Palaven', 'Trebia System', 31, 28.3, 8990, 1.2, 1.1),
('Pluto', 'Sol System', -229, 9.4, 1151, 247.7,0 ),
  ('SurKesh', 'Pranas System',25,21.5, 6709, 1.2, 1.42 ),
  ('Kharshan', 'Harsha System', 33, 18.5,5222, 1.7, 0.62),
  ('Suen', 'Maskim Xul System', 40, 0.2, 3029, 0.3, 0.88),
  ('Dekuuna', 'Phontes System', 29,68.4,  10387, 1.1, 1.1),
('Rakhana', 'Pompeii System', 45, 26, 6543, 1.4, 1.5);

-- SpaceShip Values
INSERT INTO SpaceShip
VALUES
(100, 'SSV Normandy SR-1', 'frigate' , 'spinal mass accelerator cannon', 50),
 (101, 'UT-47 Kodiak Drop Shuttle', 'personnel carrier', NULL, 12),
 (102, 'Destiny Ascension', ' dreadnought', 'FTL Fusion Particle Accelerators',10000),
(103, 'SSV Normandy SR-2', 'frigate' , 'Thanix Cannon', 75),
 (104, 'SX3 Alliance Fighter', 'fighter', 'Type I Mass Accelerator Cannons', 1),
 (105, 'Anxo', 'freighter', NULL, 144),
 (106, 'M-44 Hammerhead', 'infantry fighting vehicle', 'Burst Cannon', 3),
 (107, 'M35 Mako', 'infantry fighting vehicle', '155mm mass accelerator cannon', 3);

-- Species Values
INSERT INTO Species
VALUES
('Human', 150, 2148,'Individuality', 'Earth'),
('Asari', 1000, 580, 'Diplomacy', 'Thessia'),
('Turian', 150, 700, 'Militaristic', 'Palaven'),
('Salarian', 40, 600, 'Intelligence', 'SurKesh'),
('Krogan', 1500, 600, 'Strength', 'Tuchanka'),
('Quarian', 150, 1895, 'Technology', 'Rannoch'),
('Geth', 1000000, 1895, 'Artifical Intelligence', 'Rannoch'),
('Reaper', 1000000000, 0, 'Indoctrination', NULL),
('Batarian', 100, 300, 'Slavery', 'Kharshan'),
('Rachni', 500, 1, 'Hive Mind', 'Suen'),
('Drell', 85, 1980, 'Loyalty', 'Rakhana');

-- Weapons Values
INSERT INTO Weapons
VALUES
(1000, 'M-8 Avenger', 'Elkoss Combine', 10.8, 400, 'Assault Rifle'),
(1001, 'M-96 Mattock', NULL, 50.4, 64, 'Assault Rifle'),
(1002, 'Collector Assault Rifle', 'Collectors', 17.4, 280, 'Assault Rifle'),
(1003, 'M-92 Mantis', 'Devlon Industries', 263.1, 9, 'Sniper Rifle'),
(1004, 'M-98 Widow', NULL, 368.3, 12, 'Sniper Rifle'),
(1005, 'M-23 Katana', 'Ariake Technologies', 220, 10, 'Shotgun'),
(1006, 'M-300 Claymore', 'Krogan', 400.8, 10, 'Shotgun'),
(1007, 'M-9 Tempest', 'Elanus Risk Control Services', 14, 450, 'SMG'),
(1008, 'M-6 Carnifex', NULL, 85.4, 18, 'Pistol'),
(1009, 'M-3 Predator', 'Elanus Risk Control Services', 37.2, 60, 'Pistol');


-- Crewmate Values
INSERT INTO Crewmate

VALUES
(200, 'Jeff', 'Moreau', 29, 'Ship Pilot', 'Human', 103),
(201, 'Liara', 'Tsoni', 106, 'Prothean Specialist', 'Asari', NULL),
(202, 'Steve', 'Cortez', 27, 'Shuttle Pilot','Human', 101),
(203, 'Commander', 'Shepard', 28, 'Executive Officer', 'Human', 107),
(204, 'Thane', 'Krios', 39, 'Assassin', 'Drell', NULL),
(205, 'Grunt', NULL, 1, 'Soldier', 'Krogan', NULL),
(206, 'Garrus', 'Vakarian', 25, 'Weapons Expert', 'Turian', NULL),
(207, 'EDI', NULL, 1, 'Ship AI', NULL, NULL),
(208, 'Legion', NULL, 300, 'Reaper Expert', 'Geth', NULL),
 (209, 'Tali', 'Zorah', 22, 'Tech Engineer', 'Quarian', NULL),
(210, 'David', 'Anderson', 48, 'Captain', 'Human', NULL);

-- Commander Values
INSERT INTO Commander
  VALUES
  (203, 'N7', 'M', 'Spacer', 'Adept', 'N7 Helmet', 1009),
  (210, 'N7', 'M', 'War Hero', 'Soldier', 'Kestrel Torso Sheath',1001);

-- Enemy Values
INSERT INTO Enemy
VALUES
(50, 'Saren', 'Arterius', 'Reaper','Turian'),
(51, 'Soverign', NULL, 'Reaper', 'Reaper'),
(52, 'Harbinger', NULL, 'Reaper', 'Reaper'),
(53, 'Benezia', NULL, 'Reaper', 'Asari'),
(54, 'Vido', 'Santiago', 'Blue Suns', 'Human'),
(55, 'Balak', NULL, 'Batarian Hegemony', 'Batarian'),
(56, 'Jack', 'Harper', 'Cerberus' , 'Human'),
(57, 'Marauder', 'Shields', 'Reaper', 'Turian'),
(58, 'Harkin', NULL, 'Citadel Security Services', 'Human'),
(59, 'Elnora', NULL, 'Eclipse', 'Asari');
