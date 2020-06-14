### We have inserted 30 records for each table##

use AirplaneCrash;

INSERT INTO `PASSENGER` (`p_id`,`first_name`,`last_name`,`age`,`gender`,`phone_number`,`email_address`,`embarked`,`survived`) VALUES (1,"Channing","Carter",50,"FEMALE","(155) 770-7661","Aenean.eget.metus@temporlorem.net","NO","YES"),(2,"Austin","Montoya",61,"FEMALE","(260) 870-8330","dis.parturient@montesnasceturridiculus.com","YES","YES"),(3,"Hollee","Love",17,"MALE","(285) 207-7320","dictum@aneque.com","YES","YES"),(4,"Garrison","Decker",79,"MALE","(926) 585-8278","Donec.nibh@orciquis.com","NO","YES"),(5,"Scarlet","Cook",12,"FEMALE","(894) 416-4042","amet@netusetmalesuada.ca","NO","YES"),(6,"Samantha","Weiss",71,"MALE","(881) 834-5681","urna.nec.luctus@mollisvitaeposuere.com","NO","YES"),(7,"Nathan","Rios",29,"MALE","(376) 309-0111","vel.sapien@luctusutpellentesque.net","YES","YES"),(8,"Claudia","Conner",48,"FEMALE","(480) 770-2598","nostra@NuncmaurisMorbi.edu","YES","YES"),(9,"Walter","Norris",39,"MALE","(283) 634-2250","et.magnis.dis@nunc.edu","YES","NO"),(10,"Lewis","Foreman",1,"FEMALE","(425) 263-2611","Nulla@vestibulum.ca","NO","NO");
INSERT INTO `PASSENGER` (`p_id`,`first_name`,`last_name`,`age`,`gender`,`phone_number`,`email_address`,`embarked`,`survived`) VALUES (11,"Germane","Cobb",18,"MALE","(644) 153-3962","posuere.cubilia.Curae@nonummy.edu","NO","NO"),(12,"Colby","Rush",39,"FEMALE","(159) 426-5766","Cum.sociis.natoque@egestashendrerit.ca","YES","YES"),(13,"Summer","Buckner",10,"FEMALE","(888) 281-1680","ac.mattis@purus.com","YES","YES"),(14,"Rowan","Burris",67,"MALE","(315) 769-2754","morbi@parturient.co.uk","NO","YES"),(15,"Petra","Patterson",91,"FEMALE","(256) 291-9462","ornare@dictumeleifend.edu","NO","YES"),(16,"Molly","Sanchez",63,"FEMALE","(292) 916-7573","hendrerit@ornareFusce.ca","NO","NO"),(17,"Joel","Bradley",51,"MALE","(228) 237-4638","ultricies.sem.magna@vitae.co.uk","NO","NO"),(18,"Sonya","Schwartz",44,"FEMALE","(711) 490-3557","consectetuer@Cras.org","YES","YES"),(19,"Ignatius","Morin",11,"MALE","(833) 962-4711","convallis@quam.net","NO","YES"),(20,"Hilel","Preston",12,"MALE","(276) 466-1224","egestas.Duis@auctorvelit.ca","YES","YES");
INSERT INTO `PASSENGER` (`p_id`,`first_name`,`last_name`,`age`,`gender`,`phone_number`,`email_address`,`embarked`,`survived`) VALUES (21,"Seth","Parsons",46,"FEMALE","(137) 483-5655","nunc.est.mollis@parturient.org","YES","YES"),(22,"Gretchen","Franco",52,"FEMALE","(159) 124-7918","Fusce.mi.lorem@mauris.co.uk","NO","YES"),(23,"Cody","Wilkins",33,"FEMALE","(719) 256-3628","Ut@aaliquetvel.ca","YES","NO"),(24,"Mannix","Page",29,"MALE","(193) 549-6401","tristique.aliquet.Phasellus@nonegestasa.co.uk","YES","NO"),(25,"Ursa","Finley",85,"MALE","(868) 261-0185","sed.est@aliquetmolestie.ca","YES","NO"),(26,"Maxwell","Howard",2,"FEMALE","(515) 185-5074","rhoncus.Proin.nisl@nulla.ca","NO","YES"),(27,"Sybil","Jimenez",4,"FEMALE","(486) 724-3182","enim.Etiam@dui.org","YES","NO"),(28,"Hanae","Burnett",77,"FEMALE","(767) 295-6272","ligula.Aliquam.erat@ac.edu","NO","YES"),(29,"Tiger","Conrad",47,"FEMALE","(961) 199-7333","adipiscing@vitae.net","NO","YES"),(30,"Ian","Spears",81,"MALE","(609) 753-9124","enim.condimentum.eget@Donec.co.uk","YES","YES");

select * from PASSENGER;	


INSERT INTO `COMPANION` (`c_id`,`p_id`,`companion_type`,`special_seat`) VALUES (1,22,"Children","YES"),(2,22,"Children","NO"),(3,5,"Pets","NO"),(4,3,"Pets","YES"),(5,25,"Children","YES"),(6,6,"Children","YES"),(7,23,"Children","NO"),(8,12,"Children","YES"),(9,4,"Pets","YES"),(10,8,"Pets","NO");
INSERT INTO `COMPANION` (`c_id`,`p_id`,`companion_type`,`special_seat`) VALUES (11,14,"Pets","YES"),(12,29,"Pets","NO"),(13,28,"Pets","NO"),(14,4,"Children","NO"),(15,19,"Children","NO"),(16,3,"Pets","YES"),(17,23,"Children","NO"),(18,29,"Pets","YES"),(19,13,"Children","NO"),(20,8,"Children","NO");
INSERT INTO `COMPANION` (`c_id`,`p_id`,`companion_type`,`special_seat`) VALUES (21,10,"Pets","YES"),(22,12,"Children","YES"),(23,30,"Children","YES"),(24,12,"Children","YES"),(25,17,"Children","YES"),(26,20,"Children","NO"),(27,5,"Children","NO"),(28,27,"Pets","NO"),(29,6,"Pets","NO"),(30,19,"Pets","NO");


select * from COMPANION;




INSERT INTO `SEAT` (`seat_number`,`zone`,`class`) VALUES ('1a',"A","FirstClass"),('1b',"A","FirstClass"),('2a',"F","FirstClass"),('2b',"D","FirstClass"),('3a',"B","FirstClass"),('3b',"F","FirstClass"),('4a',"B","Business"),('4b',"D","Business"),('4c',"F","Business"),('5a',"F","Business");
INSERT INTO `SEAT` (`seat_number`,`zone`,`class`) VALUES ('5b',"F","Business"),('5c',"A","Business"),('6a',"D","Business"),('6b',"E","Business"),('6c',"F","Business"),('7a',"D","Business"),('7b',"B","Business"),('7c',"E","Business"),('8a',"E","Economy"),('8b',"B","Economy");
INSERT INTO `SEAT` (`seat_number`,`zone`,`class`) VALUES ('8c',"A","Economy"),('8d',"A","Economy"),('8e',"A","Economy"),('9a',"F","Economy"),('9b',"B","Economy"),('9c',"A","Economy"),('9d',"D","Economy"),('9e',"C","Economy"),('10a',"F","Economy"),('10b',"B","Economy");

select * from SEAT;




INSERT INTO `TICKET` (`t_id`,`p_id`,`seat_number`) VALUES (1,15,'9a'),(2,18,'8d'),(3,25,'8b'),(4,30,'10b'),(5,23,'7c'),(6,9,'1b'),(7,17,'5c'),(8,2,'4b'),(9,13,'7a'),(10,22,'3b');
INSERT INTO `TICKET` (`t_id`,`p_id`,`seat_number`) VALUES (11,20,'6b'),(12,7,'2b'),(13,14,'6c'),(14,6,'10a'),(15,21,'8e'),(16,27,'1a'),(17,12,'6a'),(18,26,'4c'),(19,3,'4a'),(20,19,'9b');
INSERT INTO `TICKET` (`t_id`,`p_id`,`seat_number`) VALUES (21,24,'7b'),(22,11,'8c'),(23,1,'9d'),(24,16,'9e'),(25,28,'2a'),(26,8,'5b'),(27,5,'9c'),(28,10,'5a'),(29,29,'3a'),(30,4,'8a');

select * from TICKET;






