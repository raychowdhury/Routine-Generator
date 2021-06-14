<?php
include 'functions.php';
$routine = get_routine();
$week    = get_days();
$rooms   = get_rooms_list();
?>

<html>
<head>
    <title>Routine Generator</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/main.css">
</head>

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Routine Generator</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="generate.php">Generate</span></a>
            </li>
        </ul>
    </div>
</nav>

<div class="container">
    <div class="row margin-20px">
		<?php
		if ( count( $rooms ) ) {
			?>

            <div class="col-lg-12">
                <div class="margin-20px">
                    <h2 class="center-item">Routine All</h2>
                </div>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th scope="col" style="text-align: center; vertical-align: middle;">SECTION</th>
                        <th scope="col" style="text-align: center; vertical-align: middle;">DAY</th>
                        <th scope="col" style="text-align: center; vertical-align: middle;">START TIME</th>
                        <th scope="col" style="text-align: center; vertical-align: middle;">END TIME</th>
                        <th scope="col" style="text-align: center; vertical-align: middle;">COURSE NO</th>
                        <th scope="col" style="text-align: center; vertical-align: middle;">ROOM</th>
                    </tr>
                    </thead>
                    <tbody>
					<?php

					if ( $routine ) {
						while ( $row = mysqli_fetch_assoc( $routine ) ) {
							?>

                            <tr>
                                <td style="text-align: center; vertical-align: middle;">
									<?php echo $row['Section']; ?>
                                </td>
                                <td style="text-align: center; vertical-align: middle;">
									<?php echo $row['WeekDay']; ?>
                                </td>
                                <td style="text-align: center; vertical-align: middle;">
									<?php echo change_to_am_pm( $row['StartTime'] ); ?>
                                </td>
                                <td style="text-align: center; vertical-align: middle;">
									<?php echo change_to_am_pm( $row['EndTime'] ); ?>
                                </td>
                                <td style="text-align: center; vertical-align: middle;">
									<?php echo $row['CourseNo']; ?>
                                </td>
                                <td style="text-align: center; vertical-align: middle;">
									<?php echo $row['Room']; ?>
                                </td>
                            </tr>

							<?php

						}
					}

					?>
                    </tbody>
                </table>
            </div>

			<?php
			if ( $routine ) {
				foreach ( $rooms as $room ) {

					$history = array();

					?>

                    <div class="col-lg-12">
                        <div class="margin-20px">
                            <h2 class="center-item">Room : <?php echo $room; ?></h2>
                        </div>
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th scope="col" style="text-align: center; vertical-align: middle;">#</th>
								<?php
								foreach ( $week as $day ) { ?>
                                    <th scope="col"
                                        style="text-align: center; vertical-align: middle;"><?php echo $day; ?></th>
								<?php } ?>
                            </tr>
                            </thead>
                            <tbody>
							<?php for ( $i = 8; $i <= 22; $i ++ ) {

								?>
                                <tr>
                                    <td style="text-align: center; vertical-align: middle;">
										<?php echo change_to_am_pm( $i ); ?>
                                    </td>

									<?php

									foreach ( $week as $day ) {
										$result = get_schedule( $room, $i, $day );
										$row    = mysqli_fetch_assoc( $result );

										$count        = $row['CourseNo'] == NULL ? 0 : 1;
										$current_span = 0;

										$prev_end = array_key_exists( $day, $history ) ? $history[ $day ] : null;
										$hideTd   = false;

										if ( $prev_end == null || $count > 0 ) {
											$current_span  = $row['EndTime'] - $row['StartTime'];
											$next_span_day = $row['EndTime'];
										} else {
											if ( $i < $prev_end ) {
												$hideTd = true;
											} else {
												$current_span = 1;
											}
											$next_span_day = $prev_end;
										}

										//$hideTd = false;$current_span = 1;

										if ( ! $hideTd ) {

											?>

                                            <td style="text-align: center; vertical-align: middle;"
                                                rowspan="<?php echo $current_span; ?>">
												<?php if ( $count ) {
													echo $row['CourseNo'] . "</br>"
													     . "Section: " . $row['Section'] . "</br>"
													     . "Time: " . format_time( $row['StartTime'], $row['EndTime'] );
												}
												?>
                                            </td>
											<?php
										}


										$history[ $day ] = $next_span_day;

									}

									?>

                                </tr>
							<?php } ?>
                            </tbody>
                        </table>
                    </div>

				<?php }
			} ?>

			<?php
		} else {
			echo "<p>Please generate routine first</p>";
		}
		?>
    </div>
</div>


<script src="js/jquery-3.3.1.slim.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>

</html>
