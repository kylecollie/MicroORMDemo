/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

/***** Seed data for States table *****/

INSERT INTO [States] (StateName)
VALUES ('Alabama'),
('Alaska'),
('Arizona'),
('Arkansas'),
('California'),
('Colorado'),
('Connecticut'),
('Delaware'),
('Florida'),
('Georgia'),
('Hawaii'),
('Idaho'),
('Illinois'),
('Indiana'),
('Iowa'),
('Kansas'),
('Kentucky'),
('Louisiana'),
('Maine'),
('Maryland'),
('Massachusetts'),
('Michigan'),
('Minnesota'),
('Mississippi'),
('Missouri'),
('Montana'),
('Nebraska'),
('Nevada'),
('New Hampshire'),
('New Jersey'),
('New Mexico'),
('New York'),
('North Carolina'),
('North Dakota'),
('Ohio'),
('Oklahoma'),
('Oregon'),
('Pennsylvania'),
('Rhode Island'),
('South Carolina'),
('South Dakota'),
('Tennessee'),
('Texas'),
('Utah'),
('Vermont'),
('Virginia'),
('Washington'),
('West Virginia'),
('Wisconsin'),
('Wyoming');

/***** Seed data for Contacts table *****/

INSERT INTO [Contacts] VALUES ('Michael', 'Jordan', 'michael@bulls.com', 'Chicago Bulls', 'Title');
INSERT INTO [Contacts] VALUES ('LaBron', 'James', 'lebron@heat.com', 'Miami Heat', 'King James');
INSERT INTO [Contacts] VALUES ('Kobe', 'Bryant', 'kobe@lakers.com', 'Los Angeles Lakers', 'Title');
INSERT INTO [Contacts] VALUES ('Kevin', 'Durant', 'kevin@thunder.com', 'OKC Thunder', 'Title');
INSERT INTO [Contacts] VALUES ('Kyrie', 'Irving', 'kyrie@cavs.com', 'Cleveland Cavaliers', 'Title');
INSERT INTO [Contacts] VALUES ('Chris', 'Paul', 'chris@clippers.com', 'Los Angeles Clippers', 'Title');

/***** Seed dta for Addresses table *****/

INSERT INTO [Addresses] VALUES (1, 'Home', '123 Main Street', 'Chicago', 13, '60290');
INSERT INTO [Addresses] VALUES (1, 'Work', '1901 W Madison St', 'Chicago', 13, '60612');
INSERT INTO [Addresses] VALUES (2, 'Home', '123 Main Street', 'Miami', 9, '33101');
INSERT INTO [Addresses] VALUES (3, 'Home', '123 Main Street', 'Los Angeles', 5, '90001');
INSERT INTO [Addresses] VALUES (4, 'Home', '123 Main Street', 'Oklahoma City', 36, '73101');
INSERT INTO [Addresses] VALUES (5, 'Home', '123 Main Street', 'Cleveland', 35, '44101');
INSERT INTO [Addresses] VALUES (6, 'Home', '456 Main Street', 'Los Angeles', 5, '90003');

