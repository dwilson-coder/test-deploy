--
-- Table structure for table `events`
--
CREATE TABLE IF NOT EXISTS `events` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`title` varchar(100) NOT NULL,
	`image` varchar(100) NOT NULL,
	`start_date` date NOT NULL,
	`end_date` date NOT NULL,
	`time` varchar(20) NOT NULL,
	`color` int(11) NOT NULL DEFAULT '1',
	`location` varchar(255) NOT NULL,
	`description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--
INSERT INTO `events` (`title`, `image`, `start_date`, `end_date`, `time`, `color`, `location`, `description`) VALUES
('International Music Awards Ceremony', 'events/images/event_1.jpg', '2020-12-04', '2020-12-05', '09:00 am - 04:30 pm', 1, 'Viderer , 43st Wardour Street, London UK', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros. Ut pharetra ornare lorem, sit amet bibendum quam imperdiet ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros. Ut pharetra ornare lorem, sit amet bibendum quam imperdiet ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros.</p>'),
('New Age Virtual Reality Exhibition 2020', 'events/images/event_2.jpg', '2020-12-08', '2020-12-08', '08:00 pm', 2, 'Ovington , 1st Walton Street', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros. Ut pharetra ornare lorem, sit amet bibendum quam imperdiet ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros. Ut pharetra ornare lorem, sit amet bibendum quam imperdiet ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros.</p>'),
('Restaurant And Pubs Furniture Exhibition 2020', 'events/images/event_3.jpg', '2020-12-08', '2020-12-09', '07:00 pm - 10:30 pm', 3, 'Viderer , 43st Wardour Street, London UK', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros. Ut pharetra ornare lorem, sit amet bibendum quam imperdiet ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros. Ut pharetra ornare lorem, sit amet bibendum quam imperdiet ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros.</p>'),
('Independence Day Concert - International Music Stars', 'events/images/event_4.jpg', '2020-12-17', '2020-12-19', '10:00 am - 01:00 pm', 4, 'Ovington , 1st Walton Street', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros. Ut pharetra ornare lorem, sit amet bibendum quam imperdiet ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros. Ut pharetra ornare lorem, sit amet bibendum quam imperdiet ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros.</p>'),
('Cindy And The Good Boys - Country Music Concert', 'events/images/event_5.jpg', '2020-12-22', '2020-12-22', '11:00 am - 03:30 pm', 1, 'Viderer , 43st Wardour Street, London UK', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros. Ut pharetra ornare lorem, sit amet bibendum quam imperdiet ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros. Ut pharetra ornare lorem, sit amet bibendum quam imperdiet ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros.</p>'),
('Sabrina Love - The International Tour', 'events/images/event_6.jpg', '2020-12-25', '2020-12-25', '07:00 pm - 09:30 pm', 5, 'Viderer , 43st Wardour Street, London UK', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros. Ut pharetra ornare lorem, sit amet bibendum quam imperdiet ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros.</p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros. Ut pharetra ornare lorem, sit amet bibendum quam imperdiet ut. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non ornare eros.</p>');
