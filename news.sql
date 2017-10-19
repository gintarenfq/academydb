--
--
-- Straipsniai saugomi lenteles News (newsId, text, date), straipsnio komentarai saugomi lentelėje Comments (commentId, text, date, newsId). 
-- Išrinkite naujausios 10 straipsnių su paskutiniu parašytu komentaru.
--
-- Table structure for table 'News'
--

CREATE TABLE News (
    newsId INT(11),
    text TEXT,
    date DATETIME,
    PRIMARY KEY (newsId)
)  ENGINE=MYISAM DEFAULT CHARSET=UTF8 AUTO_INCREMENT=8;

--
-- Table structure for table 'Comments'
--

CREATE TABLE Comments (
    commentId INT(11),
    text TEXT,
    date DATETIME,
    newsId INT(11),
    PRIMARY KEY (commentId)
)  ENGINE=MYISAM DEFAULT CHARSET=UTF8 AUTO_INCREMENT=8;
--
-- Data for table 'News'
--

INSERT INTO News
(NewsId,text,date)
 VALUES
   (1,'Mandalay Bay security guard Jesus Campos resurfaces on Ellen DeGeneres show','2017-10-18 12:33'),
   (2,'Xi Jinping at China congress calls on party to tighten its grip on the country','2017-10-17 16:45'),
   (3,'Is ISIS defeated in Iraq and Syria?','2017-10-17 13:20'),
   (4,'Hundreds of police to be deployed for Richard Spencer event','2017-10-16 12:13'),
   (5,'Ford to recall about 1.3 million trucks in North America for door latch fix','2017-10-15 18:02'),
   (6,'Heres a closer look at Apples secret self-driving car','2017-10-15 06:00'),
   (7,'Samsung announces Bixby 2.0 six months after launching Bixby 1.0','2017-10-14 14:24'),
   (8,'Sonos One review: Alexa has never sounded better','2017-10-13 11:06'),
   (9,'Harvey Weinstein Scandal Not Expected to Impact Political Fundraising','2017-10-13 07:03'),
   (10,'Gordon Haywards ankle injury and road to recovery, as explained by a medical expert','2017-10-13 14:20'),
   (11,'Roger Goodell says players should stand, but league focus on underlying issues','2017-10-13 11:15'),
   (12,'Gymnast McKayla Maroney alleges sexual abuse by team doctor','2017-10-11 15:58');
             
 

--
-- Data for table 'Comments'
--

INSERT INTO Comments
(CommentId,text,date,newsId)
 VALUES
   (1,'Lorem ipsum dolor sit amet','2017-10-18 12:33',2),
   (2,'Lorem ipsum dolor sit amet','2017-10-17 16:45',3),
   (3,'Lorem ipsum dolor sit amet','2017-10-17 13:20',3),
   (4,'Lorem ipsum dolor sit amet','2017-10-16 12:13',6),
   (5,'Lorem ipsum dolor sit amet','2017-10-15 18:02',6),
   (6,'Lorem ipsum dolor sit amet','2017-10-15 06:00',4),
   (7,'Lorem ipsum dolor sit amet','2017-10-14 14:24',5),
   (8,'Lorem ipsum dolor sit amet','2017-10-13 11:06',7),
   (9,'Lorem ipsum dolor sit amet','2017-10-13 07:03',8),
   (10,'Lorem ipsum dolor sit amet','2017-10-13 14:20',9),
   (11,'Lorem ipsum dolor sit amet','2017-10-13 11:15',10),
   (12,'Lorem ipsum dolor sit amet','2017-10-11 15:58',1),
   (13,'Lorem ipsum dolor sit amet','2017-10-15 07:03',8),
   (14,'Lorem ipsum dolor sit amet','2017-10-16 14:20',9),
   (15,'Lorem ipsum dolor sit amet','2017-10-18 14:16',10),
   (16,'Lorem ipsum dolor sit amet','2017-10-09 17:23',1);
             

--
-- Selecting most recent news with newest comments.
--
--

SELECT *
FROM news
LEFT JOIN (SELECT * FROM comments GROUP BY comments.commentId ORDER BY comments.date DESC) c
ON news.newsId = c.newsId 
GROUP BY c.newsId
ORDER BY news.date DESC
LIMIT 10


