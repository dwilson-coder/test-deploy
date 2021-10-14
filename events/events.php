<?php
// DB Connection
$hostname = 'localhost';
$username = 'root';
$password = 'root';
 
// Connect to the DB
$dbhandle = mysqli_connect($hostname, $username, $password) or die('Unable to connect to MySQL');

// Select DB
$selected = mysqli_select_db($dbhandle, 'quick_events') or die('Could not select database');

// Select events table
$result = mysqli_query($dbhandle, 'SELECT * FROM events');

// Fetch tha data from the DB
$events = array();
while ($row = mysqli_fetch_array($result)) {
	$event = new stdClass();
	$event->title 	= $row{'title'};
	$event->image 	= $row{'image'};
	$event->day 	= date('j', strtotime($row{'start_date'}));
	$event->month 	= date('n', strtotime($row{'start_date'}));
	$event->year 	= date('Y', strtotime($row{'start_date'}));
	if (!$row{'end_date'} || ($row{'end_date'} == '0000-00-00')) {
		$event->duration = 1; // If end_time is blank -> event's duration = 1 (day).	
	} else {
		if (date('Ymd', strtotime($row{'start_date'})) == date('Ymd', strtotime($row{'end_date'}))) { // If start date and end date are same day -> event's duration = 1 (day).
			$event->duration = 1;
		} else {
			$start_day = date('Y-m-d', strtotime($row{'start_date'}));
			$end_day = date('Y-m-d', strtotime($row{'end_date'}));
			$event->duration = ceil(abs(strtotime($end_day) - strtotime($start_day)) / 86400) + 1; // Get event's duration = days between start date and end date.
		}
	}
	$event->time 		= $row{'time'};
	$event->color 		= $row{'color'};
	$event->location 	= $row{'location'};
	$event->description = $row{'description'};
	
	array_push($events, $event);
}

echo json_encode($events);

// Close the connection
mysqli_close($dbhandle);
?>