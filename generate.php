<?php

include 'functions.php';

$isFormSubmitted = false;
$isValidForm = false;
$isRoutineGenerated = false;
$fileUploadSuccess = false;

function uploadFile($key, $targetName)
{
	$target_dir = "./files/";
	$target_file = $target_dir . $targetName;
	if(file_exists($target_file)){
		unlink($target_file);
	}

	if(move_uploaded_file($_FILES[$key]['tmp_name'], $target_file))
	{
		return true;
	}
	return false;
}

if(isset($_POST['generatorForm']) && $_POST['generatorForm'] === 'formSubmit' )
{
	$isFormSubmitted = true;
	$roomCSV = 'rcsv';
	$roomCSVFile = 'rooms.csv';
	$scheduleCSV = 'scsv';
	$scheduleCSVFile = 'schedule.csv';

	if(isset($_FILES[$roomCSV]) && $_FILES[$roomCSV]['size'] != 0 &&
       isset($_FILES[$scheduleCSV]) && $_FILES[$scheduleCSV]['size'] != 0)
	{
		$isValidForm = true;

		$uploadRoomCSV = uploadFile($roomCSV, $roomCSVFile);
		$uploadScheduleCSV = uploadFile($scheduleCSV, $scheduleCSVFile);

		if($uploadRoomCSV && $uploadScheduleCSV){
			$fileUploadSuccess = true;
			$isRoutineGenerated = routine_generator();
		}

	}
}

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
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
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


	<div class="row margin-20px margin-b0f">
		<div class="col-lg-6">

			<?php
			if($isFormSubmitted && !$isValidForm){
				?>

				<div class="alert alert-danger" role="alert">
					Please submit the form with the requested files
				</div>

				<?php
			}
			?>

			<?php
			if($isRoutineGenerated){
				?>

				<div class="alert alert-success" role="alert">
					<span class="h6">Routine Generated</span>
					<a href="index.php" class="btn btn-sm btn-info" style="margin-left: 20px; padding: 0.10rem .5rem;">View Routine</a>
				</div>

				<?php
			}
			?>

		</div>
	</div>

	<div class="row margin-20px margin-t0f">
		<div class="col-lg-6">
			<form method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label for="roomCSV">Select the Room CSV File</label>
					<input type="file" class="form-control-file" id="roomCSV" name="rcsv">
				</div>
				<div class="form-group">
					<label for="scheduleCSV">Select the Schedule CSV File</label>
					<input type="file" class="form-control-file" id="scheduleCSV" name="scsv">
				</div>
				<div class="form-group">
					<button type="submit" name="generatorForm" value="formSubmit" class="btn btn-primary">Submit</button>
				</div>
			</form>
		</div>
	</div>

</div>

<script src="js/jquery-3.3.1.slim.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>

</html>
