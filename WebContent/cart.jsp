<%@page import="com.model.ReservationBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmation</title>
</head>
<body>
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table">
					<div class="row header">
						<div class="cell">Select</div>
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
						<form action=return method="post">
							<div class="cell" data-title="Select">
								<input type="submit" name="submit" id="submit"
									class="form-submit" value="Select" />
								<input type="hidden" name="cityfromR" value=<%=s.getCityfrom() %>>
							<input type="hidden" name="citytoR" value=<%=s.getCityto() %>>	

							</div>
							</form>
							<div class="cell" data-title="Price" id="busprice">
								<%=s.getBusprice()%>
							</div>
							<div class="cell" data-title="Departure" id="cityfrom">
								<%=s.getCityfrom()%>
							</div>
							<div class="cell" data-title="Arrival" id="cityto">
								<%=s.getCityto()%>
							</div>
							<div class="cell" data-title="Departure Time" id="start_at">
								<%=s.getStart_at()%>
							</div>
							<div class="cell" data-title="Arrival Time" id="end_at">
								<%=s.getEnd_at()%>
							</div>
					</div>
					<%
						}
					%>
					<div class="row header">
						<div class="cell">Select</div>
						<div class="cell">Price</div>
						<div class="cell">Departure</div>
						<div class="cell">Arrival</div>
						<div class="cell">Departure Time</div>
						<div class="cell">Arrival Time</div>
					</div>
					<%
						ArrayList<ReservationBean> ret = (ArrayList<ReservationBean>) request.getAttribute("dataR");
						for (ReservationBean s : ret) {
					%>
					<div class="row">
						<form action=Seat.jsp method="post">
							<div class="cell" data-title="Select">
								<input type="submit" name="submit" id="submit"
									class="form-submit" value="Select" />
									<input type="hidden" name="cityfromR" value=<%=s.getCityfrom() %>>
							<input type="hidden" name="citytoR" value=<%=s.getCityto() %>>	
							</div>
						</form>
						<div class="cell" data-title="Price" id="busprice">
							<%=s.getBusprice()%>
						</div>
						<div class="cell" data-title="Departure" id="cityfrom">
							<%=s.getCityfrom()%>
						</div>
						<div class="cell" data-title="Arrival" id="cityto">
							<%=s.getCityto()%>
						</div>
						<div class="cell" data-title="Departure Time" id="start_at">
							<%=s.getStart_at()%>
						</div>
						<div class="cell" data-title="Arrival Time" id="end_at">
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