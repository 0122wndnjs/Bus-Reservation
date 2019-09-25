<%@page import="com.model.ReservationBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Lists</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
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
</head>
<body>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table">
					<h1>Schedule</h1>

					<div class="row header">
						<!-- 						<div class="cell">Select</div>
 -->
						<div class="cell">Price</div>
						<div class="cell">Departure</div>
						<div class="cell">Arrival</div>
						<div class="cell">Departure Time</div>
						<div class="cell">Arrival Time</div>
					</div>
					<%
						ArrayList<ReservationBean> rsv = (ArrayList<ReservationBean>) request.getAttribute("data");
						for (ReservationBean s : rsv) {
					%>
					<div class="row">
						<!-- <form action=Seat.jsp method="post">
							<div class="cell" data-title="Select">
								<input type="submit" name="submit" id="submit"
									class="form-submit" value="Login" />
							</div>
						</form> -->
						<div class="cell" data-title="Price">
							<%=s.getBusprice()%>
						</div>
						<div class="cell" data-title="Departure">
							<%=s.getCityfrom()%>
						</div>
						<div class="cell" data-title="Arrival">
							<%=s.getCityto()%>
						</div>
						<div class="cell" data-title="Departure Time">
							<%=s.getStart_at()%>
						</div>
						<div class="cell" data-title="Arrival Time">
							<%=s.getEnd_at()%>
						</div>
					</div>
					<%
						}
					%>
				</div>
			</div>
		</div>
	</div>

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
