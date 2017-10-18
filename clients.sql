--
--
-- Lentelėje Clients (clientId, birthDate) saugomi klientų gimimo datos. 
-- Išrinkite vartotojus, kurie švenčia šiandiena gimtadienius ir kiek jiems metų.
-- 
--
-- Table structure for table 'Clients' 
--

CREATE TABLE Clients (
    clientId INT(11),
    birthDate DATE,
    PRIMARY KEY (clientId)
)  ENGINE=MYISAM DEFAULT CHARSET=UTF8 AUTO_INCREMENT=8;

--
-- Data for table 'Clients'
--

INSERT INTO Clients
(ClientId,birthDate)
 VALUES
   (45677,'1991-12-03'),
   (45679,'1986-03-15'),
   (45680,'1988-10-18'),
   (145681,'1993-10-17'),
   (45682,'1977-10-18'),
   (45685,'2004-10-18');
--
-- Selecting clients who were born on current day
--

SELECT *, TIMESTAMPDIFF(YEAR,birthDate,CURDATE()) AS Age
FROM clients 
WHERE MONTH(birthDate) = MONTH(NOW()) AND DAY(birthDate) = DAY(NOW());