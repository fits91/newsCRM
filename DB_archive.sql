CREATE TABLE `genid` (
  `tableName` varchar(20) NOT NULL,
  `lastID` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tableName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO `genid` VALUES ('News',38),('user_roles',21);


CREATE TABLE `news` (
  `newsID` int(11) NOT NULL,
  `userLogin` varchar(45) NOT NULL,
  `title` varchar(200) NOT NULL,
  `body` text NOT NULL,
  `dataCreate` datetime NOT NULL,
  `lastUpdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`newsID`),
  KEY `FK_Relationship_5` (`userLogin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


INSERT INTO `news` VALUES (22,'admin','South Africa xenophobia','South Africa has condemned Nigeria\'s decision to recall its ambassador over a spate of attacks against foreigners.\nIt called the step \"unfortunate and regrettable\" and said it \"would be curious for a sisterly country to want to exploit such a painful episode\".\nAt least seven people have died over a month of attacks on foreigners and foreign-owned property in South Africa.\nZulu King Goodwill Zwelithini has been blamed for sparking the attacks with comments about foreign workers.\nSoldiers were deployed to flashpoints last week to prevent more violence.\nSome blamed the attacks - which centred on Durban and Johannesburg - on unemployment and poor political leadership.\nThousands were displaced, with many Zimbabweans, Mozambicans, Malawians and others returning home and others taking refuge in temporary government-operated shelters.\n\'Ongoing xenophobia\'\nSome governments complained that South Africa was failing to do enough to protect foreign nationals, though it now insists it has quelled the violence.\nNigeria has summoned Acting High Commissioner Martin Cobham along with Deputy High Commissioner Uche Ajulu-Okeke. \"for consultation\" over the \"ongoing xenophobia\", Minister of Foreign Affairs Aminu Wali said in a statement carried by media on Saturday.\nThe statement acknowledges that South African President Jacob Zuma has condemned the attacks.','2015-04-26 17:52:04','2015-04-26 14:52:47'),(23,'admin','Nepal earthquake: Rescue effort intensifies','Relief efforts in Nepal are intensifying after more than 2,300 people were killed in the worst earthquake there in more than 80 years.\nRescue missions and aid material have started arriving in the country.\nSeventeen people have been killed on Mt Everest by avalanches - the mountain\'s worst-ever disaster.\nMeanwhile a powerful aftershock was felt on Sunday in Nepal, India and Bangladesh, and more avalanches were reported near Everest.\nThe 6.7-magnitude tremor, centred 60km (40 miles) east of Nepal\'s capital Kathmandu, sent people running in panic for open ground in the city.','2015-04-26 18:52:54','2015-04-26 15:53:00'),(24,'admin','Volkswagen chairman Ferdinand Piech quits in power struggle','The chairman of the carmaker Volkswagen (VW), Ferdinand Piech, has resigned after a power struggle with chief executive Martin Winterkorn.\nMr Piech had criticised his chief executive in an interview with the German news magazine Der Spiegel, but did not specify the issue at stake.\nMr Winterkorn has been widely tipped as VW\'s next chairman. Mr Piech and the Porsche family control 51% of VW.\nVolkswagen is the biggest car manufacturer in Europe.\nOn 17 April, Volkswagen\'s five-member governing board gave its backing to Mr Winterkorn.\nBoard member Wolfgang Porsche, a cousin of Mr Piech, said he had given his \"personal opinion\" without clearing his remarks with other family members.\nMr Piech, 78, is a former VW chief executive. His wife Ursula has also resigned her seat on the board.\n\"The members of the steering committee came to a consensus that, in the light of the past weeks, the mutual trust necessary for successful cooperation was no longer there,\" the board said a statement.\nThe carmaker added that deputy board chairman Berthold Huber would serve as interim chairman.\n\"The uncertainty had to be ended today,\" said Mr Huber. \"The steering committee was and is conscious of its responsibility to Volkswagen and its many thousand staff.\"','2015-04-26 18:56:08','2015-04-26 15:56:09'),(25,'admin','The gunmen of Aden who keep saying sorry','As fighting raged in the Yemeni port of Aden this last week, the BBC\'s Orla Guerin made a brief visit from nearby Djibouti. Here she describes her journey in a local cargo boat and a tense meeting the local militia, which is defending the city against attackers from the north.\nAs we lined up in front of our rusting boat a colleague - who was staying behind - decided to take a photo.\n\"Thanks,\" I said, \"nice to have a picture of the team.\" It\'s not for that,\" he replied. \"If anything goes wrong, it will help identify your bodies by your clothing.\" We were all well aware of the risks of entering this particular war zone, and our trip was meticulously planned, but suddenly the intense African heat turned cool.\nWe said our goodbyes and climbed on board for a 21-hour voyage from Djibouti to Yemen. On paper it was the perfect cruise - calm blue seas, constant sunshine, and the occasional passing dolphin. The crew served us hot sweet tea and flatbread for breakfast, and fish straight from the Gulf of Aden for dinner. Alas, we had company from a small army of cockroaches, but we had chartered a boat normally used for livestock.','2015-04-26 18:57:10','2015-04-26 15:57:14'),(26,'admin','Greece: \'Big, big problems\' for debt deal','Eurogroup head Jeroen Dijsselboem has warned that \"big, big problems\" need to be solved before any Greece debt deal can be agreed.\nHe was talking after a strained meeting between eurozone finance ministers and Greek government officials in the Latvian capital of Riga.\nMinisters are trying to agree a deal to help Greece meet its debt repayments.\nIt must repay its creditors nearly €1bn (£720m) next month, and is struggling to raise the money.\nEarlier this week, the government asked its public sector bodies to hand over any reserve cash to help make the payment.\nAthens is also keen to secure the next tranche of funds from its main creditors - the European Union, the European Central Bank and the International Monetary Fund - totalling €7.2bn.\n\'No expectations\'\n\"It was a very critical discussion,\" said Mr Dijsselbloem after the talks ended with little sign of progress.\n\"A comprehensive and detailed list of reforms is needed... and a comprehensive deal is necessary before any disbursement can take place.\n\"We are all aware that time is running out.\"\nSimilar frustrations were expressed by the European Commissioner for the euro, Valdis Dombrovskis.\n\"Progress in technical negotiations has not been sufficient to reach any conclusion during this Eurogroup here in Riga,\" he said.\nEurozone ministers are waiting for Athens to present a detailed package of economic reforms to improve the country\'s finances, which they have made a condition of further support.','2015-04-26 18:57:57','2015-04-26 15:57:59'),(27,'moder1','The heist: What I\'ve learned about the Hatton Garden raid','Seventy-two safe deposit boxes were opened in a raid in London\'s Hatton Garden over the Easter weekend. How did the thieves do it? Declan Lawn learned how to abseil, break locks and drill through concrete in an effort to retrace their steps.\nHere\'s what I\'ve learned: You can read all about the Hatton Garden Safety Deposit box raid. You can look at the pictures of the vault recently released by police, or the CCTV pictures of the burglars in action.\nBut until I was shown what it would physically take, I didn\'t realise just how many challenges - big and small - the thieves had to overcome.','2015-04-25 19:06:07','2015-04-26 16:06:10'),(29,'admin','A Point of View: Why don\'t Americans mark their Civil War like the British do WW2?','The 150th anniversary of the end of the American Civil War passed with fairly low-key commemorations, says historian David Cannadine. Why are similar events in the UK such a big deal?\nEarlier this month, the United States marked the 150th anniversary of the conclusion of the American Civil War. It had lasted for four years, and had claimed the lives of more than 700,000 troops, but in the end, the north triumphed over the south, the Union was saved, and the slaves were freed. By early 1865, it had become clear that the south couldn\'t win, because it lacked the military and material resources that it needed to keep on fighting, and on 9 April, the Confederate Gen Robert E Lee surrendered his army to the Union Gen and future President Ulysses S Grant at Appomattox Court House in the state of Virginia. In fact, this dramatic encounter between the two pre-eminent military commanders in the conflict didn\'t result in the immediate cessation of all hostilities.\nThe assassination of President Abraham Lincoln a few days later led some to hope that the south would fight on, the remaining Confederate armies didn\'t surrender until the early summer, and it was only in August 1865 that Lincoln\'s successor, President Andrew Johnson, formally proclaimed the war to be ended, and that \"peace, order, tranquillity and civil authority now exists in and throughout the whole of the United States of America\".','2015-04-25 12:07:58','2015-04-27 06:53:27'),(30,'moder','South Africa xenophobia: Anger over Nigeria envoy recall','South Africa has condemned Nigeria\'s decision to recall its ambassador over a spate of attacks against foreigners.\nIt called the step \"unfortunate and regrettable\" and said it \"would be curious for a sisterly country to want to exploit such a painful episode\".\nAt least seven people have died over a month of attacks on foreigners and foreign-owned property in South Africa.\nZulu King Goodwill Zwelithini has been blamed for sparking the attacks with comments about foreign workers.\nSoldiers were deployed to flashpoints last week to prevent more violence.\nSome blamed the attacks - which centred on Durban and Johannesburg - on unemployment and poor political leadership.\nThousands were displaced, with many Zimbabweans, Mozambicans, Malawians and others returning home and others taking refuge in temporary government-operated shelters.','2015-04-26 19:12:01','2015-04-26 16:12:04'),(31,'moder','On set with the Avengers','BBC Entertainment correspondent Lizo Mzimba goes behind the scenes on Marvel\'s latest blockbuster, Avengers: Age of Ultron.\nIt\'s a sunny Friday in August 2014. All around Shepperton Studios, threatening signs warn against unauthorised entry to the soundstages.\nThe film they\'re keeping under wraps is of Avengers: Age of Ultron, although the notices only refer to the movie\'s code name \"Afterparty\".\nAnd what a party the original Avengers turned out to be. It took more than $1.5 billion (£991 million)at the global box office, and delighted millions of fans across the world with its mix of irreverent humour and budget-busting action sequences.\nI\'m here on what is day 89 of a 93 day shoot. During a brief break in filming, the movie\'s writer and director Joss Whedon confesses to feeling the pressure - but it\'s not the pressure of outside expectation. It\'s the pressure he puts on himself.\n\"The fact is there\'s a certain amount of expectation, obviously,\" he admits. \"But for me the expectation is, can I make a better movie? Can I make this more interesting? Can I push myself as a filmmaker, can I push the actors? Can I expand the Marvel universe in the way that it should be expanded? Not just make it bigger, but make it deeper.\"','2015-04-21 19:13:29','2015-04-26 16:13:35'),(32,'moder','Kissing Fidel Castro led to consequences for Miami woman','This month, President Obama made history when he shook hands with Cuban President Raul Castro at the Summit of the Americas in Panama.\nIt was the first time in more than 50 years that an American and Cuban president had met for face-to-face talks.\nMeeting a Castro has not always been easy, as Cuban-American lawyer Magda Montiel Davis found out.\nTwenty-one years ago, she met Fidel Castro in Cuba and gave him a kiss on the cheek, having no idea how much it would change her life.\nThe encounter was captured on video, and Montiel Davis received death threats after the footage was widely circulated in her hometown of Miami.\nAs relations open up between the two countries, Montiel Davis sat down with BBC Persian\'s Sam Farzaneh.','2015-04-18 12:14:41','2015-04-26 16:14:50'),(33,'moder','President Obama Reveals Surprise Guest at White House Correspondents\' Dinner','President Barack Obama brought out a surprise guest during his monologue at the White House Correspondents\' Dinner on Saturday night.\n\nObama had Keegan-Michael Key, of Comedy Central\'s \"Key and Peele,\" come on the stage in character as the president\'s anger translator Luther. As the president rattled off issues like global warming and campaign finance, Luther interjected, giving the audience a clue as to what Obama was really thinking.\n\nLuther even got to sneak in a \"Game of Thrones\" reference tied to presidential candidate Hillary Clinton.\n\nObama\'s Most Hilarious One-Liners\nBehind the Scenes at the White House Correspondents\' Dinner\n5 Stories You\'ll Care About in Politics This Week\nWhen Obama mentioned that the Koch brothers would be putting up a billion dollars for their favorite conservative candidate, Luther said no one should worry -- because Hilary Clinton is running.','2015-04-16 11:15:57','2015-04-26 16:16:05'),(34,'moder','3 Americans Among Thousands Dead in Nepal Earthquake','Three Americans were among the thousands killed in a massive earthquake that struck Nepal\'s capital on Saturday.\n\nThe State Department hasn\'t identified any of the three, but two of the Americans were killed in an avalanche on Mt. Everest that was triggered by the magnitude 7.8-earthquake near Kathmandu.\n\nSeattle-based Madison Mountaineering said on its website that Marisa Eve Girawong was a camp medic who was killed when the avalanche hit her base camp. Google executive Dan Fredinburg was also killed in the avalanche.\n\nDeath Toll in Nepal Earthquake Jumps Over 2,100\nGoogle Executive Killed in Mt. Everest Avalanche\nNepal Earthquake Kills Hundreds, Crumbles Centuries-Old Temples\nGirawong, a physician\'s assistant, had attended school in Chicago and focused on trauma and wilderness medicine, said Madison Mountaineering. An avid rock climber and mountaineer, she had reached the summits of Mt. Washington and Mt. Rainier.\n\nAftershocks following the quake caused more avalanches on Mt. Everest as the first group of survivors were flown to Kathmandu for medical treatment Sunday.','2015-04-22 16:16:35','2015-04-26 16:16:48'),(35,'moder','The Favorite Hotels of the British Royal Family','Is it possible to be more excited about the upcoming due date of a baby than the baby\'s mother? Because we think that might be the case with us and the Duchess of Cambridge\'s second bundle of joy. Because we\'re just so excited: The little royal is due this week!\n\nSo in the spirit of spares (it\'s still pretty cool to be fourth in line to the crown, we guess) and hotels (odd juxtaposition? we are a hotel review website), we\'re rounding up the favorite hotels of the British royal family, from the spot where Kate spent her wedding eve to the queen\'s go-to Caribbean getaway.','2015-04-14 12:11:35','2015-04-26 16:17:48'),(36,'admin','French Leader Visits Gas Chamber to Honor Nazi Camp Victims','French President Francois Hollande urged vigilance against resurgent anti-Semitism and racism, as he visited a former gas chamber Sunday to honor Jews, Gypsies and French resistance fighters who died in the only Nazi concentration camp on French soily.\n\n\"The worst can still happen. Anti-Semitism and racism are still here,\" Hollande said at the Natzweiler-Struthof camp in Alsace, at a ceremony marking 70 years since the last Nazi camps were liberated by Allied troops in World War II.\n\nHollande, whose country is still tense after terrorist attacks on a kosher supermarket and newspaper in January, decried the \"atrocities\" at the camp.\n\n\"We must not forget anything,\" he said.\n\nThe camp was built in 1941 to liquidate enemies of the Third Reich, rounded up from more than 30 countries around Europe. Fighters resisting the Nazi occupation of France made up most of the around 50,000 inmates of the Natzweiler-Struthof camp, and nearly half of them died of starvation, torture, illness and mistreatment.','2016-06-15 12:10:00','2015-04-26 17:08:18');


CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`user_role_id`),
  UNIQUE KEY `uni_username_role` (`role`,`username`),
  KEY `fk_username_idx` (`username`),
  CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ;


INSERT INTO `user_roles` VALUES (11,'admin','ROLE_ADMIN'),(12,'moder','ROLE_MODERATOR'),(13,'moder1','ROLE_MODERATOR'),(20,'user','ROLE_USER');


CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `password` varchar(150) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `users` VALUES ('admin','21232f297a57a5a743894a0e4a801fc3',1),('moder','9ab97e0958c6c98c44319b8d06b29c94',1),('moder1','bc6710c5b13748374e57df7fe28a2dea',1),('user','ee11cbb19052e40b07aac0ca060c23ee',1);

DELIMITER ;;
CREATE PROCEDURE `addNews`(in title varchar(200),
                         in body text,
                         in dataCreate datetime,
                         in userLogin varchar(45))
begin 

DECLARE id int DEFAULT 0;

SET id = (SELECT lastID FROM GenID
          WHERE tableName = 'News');

INSERT INTO News(newsID, userLogin, title, body, dataCreate) VALUES(id, userLogin, title, body, dataCreate);

UPDATE GenID 
SET lastID = id+1
WHERE tableName = 'News';
end;;
DELIMITER ;

DELIMITER ;;
CREATE  PROCEDURE `addUser`(in login varchar(45),
                         in password varchar(150),
                         in role varchar(45))
begin

DECLARE id int DEFAULT 0;

SET id = (SELECT lastID FROM GenID
          WHERE tableName = 'user_roles');
          
INSERT INTO users VALUES(login, password, 1);
INSERT INTO user_roles VALUES(id, login, role);

UPDATE GenID
SET lastID = id+1
WHERE tableName = 'user_roles';

end;;
DELIMITER ;

DELIMITER ;;
CREATE PROCEDURE `addUserRole`(in user varchar(45),
														 in role varchar(45) )
begin

DECLARE id int DEFAULT 0;

SET id = (SELECT lastID FROM GenID
          WHERE tableName = 'user_roles');

INSERT INTO user_roles VALUES(id,user,role);

UPDATE GenID 
SET lastID = id+1
WHERE tableName = 'user_roles';

end;;
DELIMITER ;;

