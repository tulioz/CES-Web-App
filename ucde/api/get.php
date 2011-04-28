<?php
	if (isset($_GET['format']) && isset($_GET['type'])) {
		$format = strtolower($_GET['format']);
		$type = strtolower($_GET['type']);
		
		$validDBs = array("restaurants", "hospitals", "events", "test");

		if(!in_array($type, validDBs)) {
			die("Invalid location type request. Please don't abuse the API.");
		}
		
		// $num = intval($_GET['num']);
		
		$connection = mysql_connect('127.0.0.1', 'ucde', 'ucde') or die ('MySQL Connection Error.');
		mysql_select_db('ucdedb', $connection) or die ('MySQL db selection error');
		
		$result = mysql_query("SELECT * FROM " . $type . " ORDER BY 'id' DESC ", $connection) or die ('MySQL Selection Error.');
		
		if ($format == 'json') {
			$locations = array();
			while($location = mysql_fetch_array($result, MYSQL_ASSOC)) {
				$locations[] = array('location' => $location);
			}
			
			$output = json_encode(array('locations' =>$locations));
		} else if ($format == 'xml') {
			# code...
		} else {
			die('Improper response format.');
		}
		
		echo $output;
	}
?>