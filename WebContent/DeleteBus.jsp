<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--=======================================================================================
========-->

<link rel="stylesheet" href="css/styleregister.css">
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
<title>Delete Bus Schedule</title>
</head>
<body>
	<form action="delete" method="post">
		<div class="limiter">
			<div class="container-table100">
				<div class="wrap-table100">
					<div class="table">
						<h1>Select Schedule</h1>
							<div class="row header">
								<div class="cell">Price</div>
								<div class="cell">Departure</div>
								<div class="cell">Arrival</div>
								<div class="cell">Departure Time</div>
								<div class="cell">Arrival Time</div>
							</div>

							<div class="row">
								<div class="cell" data-title="Price" id="busprice">
									<input type="text" name="busprice" id="busprice">
								</div>
								<div class="cell" data-title="Departure" id="cityfrom">
									<input type="text" name="cityfrom" id="cityfrom">
								</div>
								<div class="cell" data-title="Arrival" id="cityto">
									<input type="text" name="cityto" id="cityto">
								</div>
								<div class="cell" data-title="Departure Time" id="start_at">
									<input type="text" name="start_at" id="start_at">
								</div>
								<div class="cell" data-title="Arrival Time" id="end_at">
									<input type="text" name="end_at" id="end_at">
								</div>
							</div>

							<div class="form-group">
								<input type="submit" name="submit" id="submit"
									class="form-submit" value="Submit" />
							</div>
					</div>
				</div>
			</div>
		</div>
	</form>

	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="js/mainSchedule.js"></script>
</body>
</html>