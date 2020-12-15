
INSERT INTO `flight` (`airline_name`, `flight_num`, `departure_airport`, `departure_time`, `arrival_airport`, `arrival_time`, `price`, `status`, `airplane_id`) VALUES
('China Eastern', 11, 'PVG', '2020-12-02 11:39:09', 'JFK', '2020-12-03 11:39:13', '11011', 'upcoming', 3333),
('China Eastern', 89, 'LHR', '2020-12-13 11:32:10', 'SJJ', '2020-12-14 11:32:15', '200', 'upcoming', 1000),
('China Eastern', 211, 'JFK', '2020-12-16 07:00:00', 'PVG', '2020-12-17 12:05:00', '500', 'upcoming', 9837),
('China Eastern', 332, 'LHR', '2020-12-05 11:34:55', 'SJJ', '2020-12-06 11:35:01', '888', 'upcoming', 4444),
('China Eastern', 333, 'LHR', '2020-12-05 11:34:55', 'SJJ', '2020-12-06 11:35:01', '4444', 'upcoming', 231),
('China Eastern', 335, 'LHR', '2020-12-05 11:34:55', 'SJJ', '2020-12-06 11:35:01', '4444', 'upcoming', 231),
('China Eastern', 666, 'LHR', '2020-12-06 11:33:28', 'PVG', '2020-12-08 11:33:32', '10000', 'upcoming', 1253),
('China Eastern', 899, 'LHR', '2020-12-25 22:00:00', 'SJJ', '2020-12-26 14:10:00', '450', 'upcoming', 1000),
('China Eastern', 23435, 'JFK', '2020-12-02 11:00:00', 'PVG', '2020-12-03 14:25:00', '100', 'delayed', 1253),
('China Eastern', 23452, 'PVG', '2020-12-22 12:00:00', 'JFK', '2020-12-22 17:45:00', '800', 'upcoming', 1253),
('China Eastern', 53423, 'JFK', '2020-12-05 07:00:00', 'PVG', '2020-12-05 12:05:00', '500', 'in-progress', 9837);


INSERT INTO `purchases` (`ticket_id`, `customer_email`, `booking_agent_id`, `purchase_date`) VALUES
(23452, 'bestcus', 8756, '2020-03-10'),
(23452, 'qwety@gmail.com', NULL, '2020-12-06'),
(53423, 'ben_ol87@gmail.com', NULL, '2020-03-10'),
(53423, 'bestcus', NULL, '2020-12-09'),
(53423, 'qwety@gmail.com', NULL, '2020-12-06'),
(57384, 'simonsays@gmail.com', 12324, '2020-03-10'),
(67676, 'ben_ol87@gmail.com', 23453, '2020-12-14'),
(67676, 'bestcus', NULL, '2020-12-06'),
(67676, 'hithere', 12324, '2020-12-09'),
(67676, 'qwety@gmail.com', NULL, '2020-12-06'),
(67676, 'simonsays@gmail.com', 12324, '2020-12-09');

INSERT INTO `airline` (`airline_name`) VALUES
('China Eastern');

INSERT INTO `airline_staff` (`username`, `password`, `first_name`, `last_name`, `date_of_birth`, `airline_name`) VALUES
('mingling', 'pass1234', 'ming', 'ling', '1980-10-22', 'China Eastern'),
('staff2', '5f4dcc3b5aa765d61d8327deb882cf99', 'beckham', 'david', '2020-12-05', 'China Eastern'),
('staffer', '5f4dcc3b5aa765d61d8327deb882cf99', 'r', 'r', '2020-12-09', 'China Eastern'),
('tretter', '5f4dcc3b5aa765d61d8327deb882cf99', 're', 're', '1992-07-10', 'China Eastern'),
('WORLDSFINIESTSTAFF', '5f4dcc3b5aa765d61d8327deb882cf99', 'F', 'F', '2020-12-05', 'China Eastern');

INSERT INTO `airplane` (`airline_name`, `airplane_id`, `seats`) VALUES
('China Eastern', 231, 12),
('China Eastern', 456, 12),
('China Eastern', 1000, 315),
('China Eastern', 1253, 230),
('China Eastern', 2222, 345),
('China Eastern', 3333, 345),
('China Eastern', 4444, 345),
('China Eastern', 9837, 400),
('China Eastern', 11111, 345);

INSERT INTO `airport` (`airport_name`, `airport_city`) VALUES
('JFK', 'NYC'),
('LHR', 'London'),
('PVG', 'Shanghai'),
('SJJ', 'Sarajevo');


INSERT INTO `user` (`username`, `password`, `account_type`) VALUES
('allmydata.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'customer'),
('bartycrease@sweaty.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'airline_staff'),
('best', '5f4dcc3b5aa765d61d8327deb882cf99', 'airline_staff'),
('bestcus', '5f4dcc3b5aa765d61d8327deb882cf99', 'customer'),
('beststaff', '5f4dcc3b5aa765d61d8327deb882cf99', 'airline_staff'),
('booking@staff', '5f4dcc3b5aa765d61d8327deb882cf99', 'booking_agent'),
('bookingagent1@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'booking_agent'),
('def', '5f4dcc3b5aa765d61d8327deb882cf99', 'airline_staff'),
('demar@derozan.com', 'password', 'booking_agent'),
('eeeeee', '5f4dcc3b5aa765d61d8327deb882cf99', 'booking_agent'),
('employeeofmoth', '5f4dcc3b5aa765d61d8327deb882cf99', 'airline_staff'),
('ergerg', '5f4dcc3b5aa765d61d8327deb882cf99', 'customer'),
('ergwef', '5f4dcc3b5aa765d61d8327deb882cf99', 'booking_agent'),
('getmehome@comminghome.com', 'password', 'customer'),
('gsffew', '618c90bbd0a41326c3dc90b34b19a23f', 'customer'),
('hashedpass@has', '5f4dcc3b5aa765d61d8327deb882cf99', 'customer'),
('new3', '1a1dc91c907325c69271ddf0c944bc72', 'customer'),
('newcus2', '5f4dcc3b5aa765d61d8327deb882cf99', 'customer'),
('newnew@new.com', 'password', 'customer'),
('num1customer@gustomer.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'customer'),
('oac240@nyu.edu', 'password', NULL),
('oac240@nyuewfwef.edu', '5f4dcc3b5aa765d61d8327deb882cf99', 'customer'),
('oac240@qwe.edu', '5f4dcc3b5aa765d61d8327deb882cf99', 'customer'),
('oac2fewfew40@nyu.edu', '5f4dcc3b5aa765d61d8327deb882cf99', 'customer'),
('oac420@nyu.edu', '5f4dcc3b5aa765d61d8327deb882cf99', 'booking_agent'),
('olichen@outlook.com', 'pooooo', 'customer'),
('qwety@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'customer'),
('rewrr', '5f4dcc3b5aa765d61d8327deb882cf99', 'booking_agent'),
('rwner', 'c92dd017e3decd6603e8e7ba9aedb732', 'airline_staff'),
('scaccac', '5f4dcc3b5aa765d61d8327deb882cf99', 'airline_staff'),
('simonsays@hotmail.com', 'password', 'customer'),
('staff1', '5f4dcc3b5aa765d61d8327deb882cf99', 'airline_staff'),
('staff2', '5f4dcc3b5aa765d61d8327deb882cf99', 'airline_staff'),
('staffer', '5f4dcc3b5aa765d61d8327deb882cf99', 'airline_staff'),
('ta best', '5f4dcc3b5aa765d61d8327deb882cf99', 'customer'),
('tempura@isnice.com', 'password', 'customer'),
('tretter', '5f4dcc3b5aa765d61d8327deb882cf99', 'airline_staff'),
('WORLDSFINIESTSTAFF', '5f4dcc3b5aa765d61d8327deb882cf99', 'airline_staff');


INSERT INTO `ticket` (`ticket_id`, `airline_name`, `flight_num`) VALUES
(67676, 'China Eastern', 211),
(23452, 'China Eastern', 23435),
(57384, 'China Eastern', 23452),


INSERT INTO `customer` (`email`, `name`, `password`, `building_number`, `street`, `city`, `state`, `phone_number`, `passport_number`, `passport_expiration`, `passport_country`, `date_of_birth`) VALUES
('ben_ol87@gmail.com', 'Ben older', 'benisbest', '2', 'Ben street', 'NYC', 'NY', 917654682, '558745', '1998-10-02', 'USA', '1970-10-01'),
('bestcus', 'cus spider', '5f4dcc3b5aa765d61d8327deb882cf99', '2A', 'penn st', 'nyc', 'NY', 9175176829, '146', '2020-12-10', 'Spain', '2020-12-19'),
('hithere', '4et4', '5f4dcc3b5aa765d61d8327deb882cf99', '33', 'hefef', 'fsefesf', 'grgd', 8888888, '8888888', '2020-12-04', 'Spain', '2020-12-09'),
('qwety@gmail.com', 'q', '5f4dcc3b5aa765d61d8327deb882cf99', '23', '1410 Prospect Place apt 2c', 'Brooklyn', 'New York', 9175176777, '7242345', '2020-12-03', 'Spain', '2020-12-19'),
('Simonsays@gmail.com', 'Simon bell', 'Simonring', '32', 'mon road', 'London', 'Middlesex', 7893231, '324344', '2012-08-02', 'UK', '1984-12-08');


INSERT INTO `purchases` (`ticket_id`, `customer_email`, `booking_agent_id`, `purchase_date`) VALUES
(23452, 'bestcus', 8756, '2020-03-10'),
(23452, 'qwety@gmail.com', NULL, '2020-12-06'),
(53423, 'ben_ol87@gmail.com', NULL, '2020-03-10'),
(53423, 'bestcus', NULL, '2020-12-09'),
(53423, 'qwety@gmail.com', NULL, '2020-12-06'),
(57384, 'simonsays@gmail.com', 12324, '2020-03-10'),
(67676, 'ben_ol87@gmail.com', 23453, '2020-12-14'),
(67676, 'bestcus', NULL, '2020-12-06'),
(67676, 'hithere', 12324, '2020-12-09'),
(67676, 'qwety@gmail.com', NULL, '2020-12-06'),
(67676, 'simonsays@gmail.com', 12324, '2020-12-09');



INSERT INTO `booking_agent` (`email`, `password`, `booking_agent_id`) VALUES
('agent@booking.com', 'password', 8756),
('booking@staff', '5f4dcc3b5aa765d61d8327deb882cf99', 12324),
('bookingagent1@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 23453),
('eeeeee', '5f4dcc3b5aa765d61d8327deb882cf99', 23453),
('rewrr', '5f4dcc3b5aa765d61d8327deb882cf99', 23453);


INSERT INTO `airport` (`airport_name`, `airport_city`) VALUES
('JFK', 'NYC'),
('LHR', 'London'),
('PVG', 'Shanghai'),
('SJJ', 'Sarajevo');