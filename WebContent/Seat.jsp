<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/styleregister.css">
<script>
	var seats = new Array();

	function seat(iSeat, bSeat) {

		seats[iSeat] = bSeat;

	}

	for (var i = 1; i < 11; i++) {

	}

	function reserve(bValue) {
		var msg = "";

		var seatNo = document.getElementById("sNo").value;
		seatNo = parseInt(seatNo) - 1;

		if (bValue == 1) {
			if (seatNo + 1 == seats[seatNo]) {
				msg = seats[seatNo]
						+ " Seat had been already taken. Please Select other seats.";
			} else {
				seat(seatNo, (seatNo + 1));
				showSeatColor(bValue, seatNo + 1);
				alert("Reservation Confirmed");
			}
		} else {
			seat(seatNo, 0);
			showSeatColor(bValue, seatNo + 1);
			msg = seatNo + 1 + " Seat had been cancelled..";
		}
		var dMsg = document.getElementById("div_msg");
		dMsg.innerHTML = msg;
	}

	function showSeatColor(bValue, seatNo) {
		var seatld = document.getElementById("s" + seatNo);
		if (bValue) {
			seatld.style.backgroundColor = "red";
		} else {
			seatld.style.backgroundColor = "white";
		}
	}
	
/* 	function deleteSeatColor(bValue, seatNo) {
		var seatld = document.getElementById("s" + seatNo);
		if()
	} */
	
</script>
</head>
<body>
	<div class="signup-content signup-form">
		<h2>Bus Reservation</h2>
<!-- 		<div class="signup-content signup-form">
 -->			<input type="text" id="sNo" value="">(Enter the Seat Number
			between 1-40.)<br> <input type="button" value="Select"
				onclick="reserve(1);"> <input type="button" value="Cancel"
				onclick="reserve(2);">
<!-- 		</div >
 -->		<p>Message
		<div id="div_msg">...</div>
		</p>
		<p>
			Seat Map
			<section>
				<table border="1" cellspacing="0" width="400">
					<tr>
						<td id="s1" width="25%" align="center"><input type="button" value="1" name="one"/></td>
						<td id="s2" width="25%" align="center"><input type="button" value="2" name="two"/></td>
						<td id="s3" width="25%" align="center"><input type="button" value="3" name="three"/></td>
						<td id="s4" width="25%" align="center"><input type="button" value="4" name="four"/></td>
					</tr>
					<tr>
						<td id="s5" width="25%" align="center"><input type="button" value="5" name="five"/></td>
						<td id="s6" width="25%" align="center"><input type="button" value="6" name="six"/></td>
						<td id="s7" width="25%" align="center"><input type="button" value="7" name="seven"/></td>
						<td id="s8" width="25%" align="center"><input type="button" value="8" name="eight"/></td>
					</tr>
					<tr>
						<td id="s9" width="25%" align="center"><input type="button" value="9" name="nine"/></td>
						<td id="s10" width="25%" align="center"><input type="button" value="10" name="ten"/></td>
						<td id="s11" width="25%" align="center"><input type="button" value="11" name="eleven"/></td>
						<td id="s12" width="25%" align="center"><input type="button" value="12" name="twelve"/></td>
					</tr>
					<tr>
						<td id="s13" width="25%" align="center"><input type="button" value="13" name="thirteen"/></td>
						<td id="s14" width="25%" align="center"><input type="button" value="14" name="fourteen"/></td>
						<td id="s15" width="25%" align="center"><input type="button" value="15" name="fifteen"/></td>
						<td id="s16" width="25%" align="center"><input type="button" value="16" name="sixteen"/></td>
					</tr>
					<tr>
						<td id="s17" width="25%" align="center"><input type="button" value="17" name="seventeen"/></td>
						<td id="s18" width="25%" align="center"><input type="button" value="18" name="eighteen"/></td>
						<td id="s19" width="25%" align="center"><input type="button" value="19" name="ninteen"/></td>
						<td id="s20" width="25%" align="center"><input type="button" value="20" name="twnety"/></td>
					</tr>
					<tr>
						<td id="s21" width="25%" align="center"><input type="button" value="21" name="twentyone"/></td>
						<td id="s22" width="25%" align="center"><input type="button" value="22" name="twentytwo"/></td>
						<td id="s23" width="25%" align="center"><input type="button" value="23" name="twentythree"/></td>
						<td id="s24" width="25%" align="center"><input type="button" value="24" name="twentyfour"/></td>
					</tr>
					<tr>
						<td id="s25" width="25%" align="center"><input type="button" value="25" name="twentyfive"/></td>
						<td id="s26" width="25%" align="center"><input type="button" value="26" name="twentysix"/></td>
						<td id="s27" width="25%" align="center"><input type="button" value="27" name="twentyseven"/></td>
						<td id="s28" width="25%" align="center"><input type="button" value="28" name="twentyeight"/></td>
					</tr>
					<tr>
						<td id="s29" width="25%" align="center"><input type="button" value="29" name="twentynine"/></td>
						<td id="s30" width="25%" align="center"><input type="button" value="30" name="thirty"/></td>
						<td id="s31" width="25%" align="center"><input type="button" value="31" name="thirtyone"/></td>
						<td id="s32" width="25%" align="center"><input type="button" value="32" name="thirtytwo"/></td>
					</tr>
					<tr>
						<td id="s33" width="25%" align="center"><input type="button" value="33" name="thirtythree"/></td>
						<td id="s34" width="25%" align="center"><input type="button" value="34" name="thirtyfour"/></td>
						<td id="s35" width="25%" align="center"><input type="button" value="35" name="thirtyfive"/></td>
						<td id="s36" width="25%" align="center"><input type="button" value="36" name="thirtysix"/></td>
					</tr>
					<tr>
						<td id="s37" width="25%" align="center"><input type="button" value="37" name="thirtyseven"/></td>
						<td id="s36" width="25%" align="center"><input type="button" value="38" name="thirtyeight"/></td>
						<td id="s39" width="25%" align="center"><input type="button" value="39" name="thirtynine"/></td>
						<td id="s40" width="25%" align="center"><input type="button" value="40" name="forty"/></td>
					</tr>
				</table>
			</section>
		<form action=payment.jsp method="post">
			<div>
				<input type="submit" name="submit" id="submit" class="form-submit"
					value="Book Now" />
			</div>
		</form>
	</div>
</body>
</html>
</body>
</html>