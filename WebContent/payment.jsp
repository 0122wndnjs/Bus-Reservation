<%@page import="com.model.ReservationBean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<link rel="stylesheet" href="css/payment.css">

<!------ Include the above in your HEAD tag ---------->

<script>
	$('form').card({
		container : '.card-wrapper',
		width : 280,

		formSelectors : {
			nameInput : 'input[name="first-name"], input[name="last-name"]'
		}
	});
</script>
</head>
<body>
	<form action=thankyou.html>
		<div class="form-container">
			<div class="personal-information">
				<h1>Payment Information</h1>
			</div>
			<!-- end of personal-information -->

			<input required id="column-left" type="text" name="first-name"
				placeholder="First Name" /> <input required id="column-right" type="text"
				name="last-name" placeholder="Last Name" /> <input required id="input-field"
				type="text" name="number" placeholder="Card Number" /> <input required
				id="column-left" type="text" name="expiry" placeholder="MM / YY" />
			<input required id="column-right" type="text" name="cvc" placeholder="CCV" />


			<input id="input-field" type="text" name="streetaddress"
				required="required" autocomplete="on" maxlength="45"
				placeholder="Streed Address" /> <input id="column-left" type="text"
				name="city" required="required" autocomplete="on" maxlength="20"
				placeholder="City" /> <input id="column-right" type="text"
				name="zipcode" required="required" autocomplete="on"
				pattern="[0-9]*" maxlength="5" placeholder="ZIP code" /> <input
				id="input-field" type="email" name="email" required="required"
				autocomplete="on" maxlength="40" placeholder="Email" /> <input
				id="input-button" type="submit" value="Submit" /><a href="thankyou.html"></a>
		</div>
	</form>

</body>