<?php

define('HOST', 'localhost');
define('DATABASE', 'groupb');
define('USERNAME', 'root');
define('PASSWORD', '');

$con = mysqli_connect(HOST, USERNAME, PASSWORD, DATABASE);

$sectionNum = 6854;

function debug_to_console( $data ) {
	$output = $data;
	if ( is_array( $output ) ) {
		$output = implode( ',', $output );
	}

	echo "<script>console.log( 'Debug Objects: " . $output . "' );</script>";
}

function insert( $query ) {
	global $con;
	mysqli_query( $con, $query );
}

function insert_rooms( $room ) {
	$query = "INSERT INTO rooms (RoomNo) VALUES ('$room')";
	insert( $query );
}

function insert_course_days( $course, $days ) {
	global $sectionNum;
	$section = $sectionNum;
	$sectionNum ++;
	$query = "INSERT INTO courses(CourseNo,Sect,Days) VALUES ('$course','$section', '$days')";
	insert( $query );
}

function read_room_csv() {
	$fileName = './files/rooms.csv';
	$array    = explode( "\n", file_get_contents( $fileName ) );
	foreach ( $array as $line ) {
		$len = strlen( $line );
		if ( $len < 1 ) {
			continue;
		}
		if ( ord( $line[ $len - 1 ] ) == 13 ) {
			$str = substr( $line, 0, $len - 1 );
		} else {
			$str = $line;
		}
		//debug_to_console($str);
		insert_rooms( $str );
	}
}

function read_schedule_csv() {
	$fileName = './files/schedule.csv';
	$array    = explode( "\n", file_get_contents( $fileName ) );
	foreach ( $array as $line ) {
		$len = strlen( $line );
		if ( $len < 1 ) {
			continue;
		}
		if ( ord( $line[ $len - 1 ] ) == 13 ) {
			$str = substr( $line, 0, $len - 1 );
		} else {
			$str = $line;
		}
		$arr = explode( ',', $str );
		insert_course_days( $arr[0], $arr[1] );
	}
}

function clear_table( $table ) {
	global $con;
	$query = "DELETE from " . $table;
	mysqli_query( $con, $query );
}

function reset_auto_increment( $table ) {
	global $con;
	$query_truncate = "TRUNCATE TABLE `$table`";
	$query_reset    = "ALTER TABLE `$table` AUTO_INCREMENT = 1";
	mysqli_query( $con, $query_truncate );
	mysqli_query( $con, $query_reset );
}

function get_courses() {
	global $con;
	$query = "SELECT * FROM courses";

	return mysqli_query( $con, $query );
}

function get_rooms() {
	global $con;
	$query = "SELECT RoomNo FROM rooms";

	return mysqli_query( $con, $query );
}

function insert_class( $room, $course, $start, $end, $day, $section ) {
	global $con;
	$query = "INSERT INTO routine(`CourseNo`, `WeekDay`, `StartTime`, `EndTime`, `Section`, `Room`) VALUES ('$course', '$day', '$start', '$end', '$section', '$room')";

	return mysqli_query( $con, $query );
}

function get_days() {
	return array( "Monday", "Tuesday", "Wednesday", "Thursday", "Friday","Saturday","Sunday" );
}

function get_schedule( $room, $startTime, $day ) {
	global $con;
	$query = "SELECT * FROM routine WHERE Room='$room' AND StartTime='$startTime' AND WeekDay='$day'";

	return mysqli_query( $con, $query );
}

function get_rooms_list() {
	$rooms      = get_rooms();
	$rooms_list = array();
	while ( $row = mysqli_fetch_assoc( $rooms ) ) {
		array_push( $rooms_list, $row["RoomNo"] );
	}

	return $rooms_list;
}

function check_room_time_day( $room, $start, $day ) {
	global $con;
	$query = "SELECT COUNT(*) as CNT FROM routine WHERE Room='$room' and WeekDay='$day' and StartTime <= '$start' and EndTime > '$start'";
	//print_r($query);
	$result = mysqli_query( $con, $query );
	$re     = mysqli_fetch_assoc( $result );

	return $re["CNT"] > 0;
}

function iter( $rooms, $course, $days, $inc, $except_day = null ) {
	$day  = null;
	$done = false;

	for ( $j = 8; $j <= 22 - $inc && ! $done; $j ++ ) {
		for ( $i = 0; $i < count( $days ) && ! $done; $i ++ ) {
			if ( $days[ $i ] != $except_day ) {
				for ( $k = 0; $k < count( $rooms ) && ! $done; $k ++ ) {
					if ( $days[ $i ] == "Wednesday" && ( ($j <= 14 && $j + $inc >= 16) || $j == 14 || $j == 15 || $j+$inc == 15 || $j + $inc == 16 )) {
						continue;
					}
					$has_class = check_room_time_day( $rooms[ $k ], $j, $days[ $i ] );
					if ( ! $has_class ) {
						$result = insert_class( $rooms[ $k ], $course["CourseNo"], $j, $j + $inc, $days[ $i ], $course["Sect"] );
						$done   = true;
						$day    = $days[ $i ];
					}
				}
			}
		}
	}

	return $day;
}

function get_course_hour($course, $default)
{
	global $con;
	$query = "SELECT Hours from hours WHERE CourseNo='$course'";
	$result = mysqli_query($con, $query);
	$res = mysqli_fetch_assoc($result);
	return $res["Hours"] > 0 ? $res["Hours"] : $default;
}

function generate_routine() {
	$days       = get_days();
	$courses    = get_courses();
	$rooms      = get_rooms();
	$rooms_list = array();
	while ( $row = mysqli_fetch_assoc( $rooms ) ) {
		array_push( $rooms_list, $row["RoomNo"] );
	}

	$total = 0;

	while ( $row = mysqli_fetch_assoc( $courses ) ) {

		$hour = get_course_hour($row['CourseNo'], $row['Days']);
		debug_to_console($hour);

		if ( $row["Days"] == 1 ) {
			$day   = iter( $rooms_list, $row, $days, $hour );
			$total += 1;
		} else if ( $row["Days"] == 2 ) {

			$day1H = ceil($hour/2);
			$day2H = floor($hour/2);

			$day   = iter( $rooms_list, $row, $days, $day1H );
			$day2  = iter( $rooms_list, $row, $days, $day2H, $day );
			$total += 2;
		} else if ( $row["Days"] == 3 ) {

			$day1H = ceil($hour/3);
			$day2H = ceil($hour/3);
			$day3H = floor($hour/3);

			$day   = iter( $rooms_list, $row, $days, $day1H );
			$day2  = iter( $rooms_list, $row, $days, $day2H, $day );
			$day3  = iter( $rooms_list, $row, $days, $day3H, $day2 );
			$total += 3;
		}

		//debug_to_console($total);

	}

	return true;
}

function get_routine() {
	global $con;
	$query = "SELECT * FROM routine";

	return mysqli_query( $con, $query );
}

function change_to_am_pm( $time ) {
	return $time >= 12 ? ( $time == 12 ? "12:00PM" : ( $time - 12 ) . ":00PM" ) : $time . ":00AM";
}

function format_time( $start, $end ) {
	return change_to_am_pm($start) . " - " . change_to_am_pm($end);
}

function empty_tables() {
	clear_table( 'rooms' );
	clear_table( 'courses' );
	reset_auto_increment( 'rooms' );
	reset_auto_increment( 'courses' );
	reset_auto_increment( 'routine' );
}

function routine_generator() {
	empty_tables();
	read_room_csv();
	read_schedule_csv();

	return generate_routine();
}

?>
