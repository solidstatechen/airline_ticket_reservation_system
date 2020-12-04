INSERT into airline VALUES("China Eastern");
INSERT into airport VALUES("JFK","NYC");
INSERT into airport VALUES("PVG","Shanghai");
INSERT into customer VALUES("ben_ol87@gmail.com","Ben older","benisbest",2 , "Ben street", "NYC", "NY", 917654682, 558745, '1998-10-02',"USA",'1970-10-01' );
INSERT into customer VALUES("Simonsays@gmail.com","Simon bell","Simonring", 32,"mon road", "London", "Middlesex", 07893231, 324344, '2012-08-02',"UK",'1984-12-08' );
INSERT into booking_agent VALUES("agent@booking.com", "password", 8756);
INSERT into airplane VALUES("China Eastern",1253,230);
INSERT into airplane VALUES("China Eastern", 9837,400);
INSERT into airline_staff VALUES("mingling", 'ming', 'ling','pass1234', '1980-10-22', "China Eastern");
INSERT into flight VALUES('China Eastern',23452,'JFK', '020-12-02 12:00', 'PVG', '2020-12-02 17:45', 800.00, 'upcoming','1253');
INSERT into flight VALUES('China Eastern',53423, 'JFK', '020-12-05 07:00','PVG', '2020-12-05 12:05', 500.00,'in-progress','9837');
INSERT into flight VALUES('China Eastern',23435, 'JFK', '020-12-11 11:00', 'PVG','2020-12-11 14:25', 100.00, 'delayed','1253');
INSERT into ticket VALUES( 23452,'China Eastern',23435);
INSERT into purchases VALUES(23435,"ben_ol87@gmail.com","agent@booking.com", '2020-03-10');
INSERT into ticket VALUES(57984,'China Eastern',53423);
INSERT into purchases VALUES(57984,NULL,"Simonsays@gmail.com", '2020-03-10')


