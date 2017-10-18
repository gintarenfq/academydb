--
--
-- Lentelėje UserClicks (clickId, userId, dateTime) saugomi vartotojų click’ai. 
-- Parašykite užklausą, kuri suskaičiuotų kiek unikalių vartotojų buvo per mėnesį nuo šių metų pradžios.
-- 
--
-- Table structure for table 'UserClicks' 
--

CREATE TABLE UserClicks (
    clickId INT(11) NOT NULL AUTO_INCREMENT,
    userId INT(11),
    dateTime DATETIME,
    PRIMARY KEY (clickId)
)  ENGINE=MYISAM DEFAULT CHARSET=UTF8 AUTO_INCREMENT=8;

--
-- Data for table 'UserClicks'
--

INSERT INTO userClicks
(clickId,userId,dateTime)
 VALUES
   (122,45677,'2016-12-03 18:14'),
   (124,45679,'2017-01-03 17:03'),
   (125,45680,'2017-02-09 12:33'),
   (126,45681,'2017-02-23 21:23'),
   (127,45682,'2017-03-14 15:33'),
   (128,45683,'2017-04-25 00:33'),
   (129,45684,'2017-05-11 22:41'),
   (130,45685,'2017-06-16 12:15'),
   (131,45686,'2017-08-05 20:33'),
   (132,45687,'2017-08-12 17:37'),
   (133,45688,'2017-08-12 07:53'),
   (134,45689,'2017-09-07 14:13'),
   (135,45690,'2017-09-04 12:33');
--
-- Unique users per month
--

SELECT *, COUNT(userClicks.clickId) AS Paspaudimai FROM userclicks
WHERE datetime BETWEEN '2017-01-01 00:00:00' AND '2017-10-01 00:00:00'
GROUP BY MONTH (dateTime);
