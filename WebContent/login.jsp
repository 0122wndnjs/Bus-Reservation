<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Login</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900"
	rel="stylesheet">

<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">

<link rel="stylesheet" href="css/aos.css">

<link rel="stylesheet" href="css/ionicons.min.css">

<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/seats.css">

<!-- Main css -->
<link rel="stylesheet" href="css/styleregister.css">
<body>
	<form action=login method="post">
		<nav
			class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
			id="ftco-navbar">
			<div class="container">
				<a class="navbar-brand" href="index.jsp"><span>JK LINES</span></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#ftco-nav" aria-controls="ftco-nav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="oi oi-menu"></span> Menu
				</button>

				<div class="collapse navbar-collapse" id="ftco-nav">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a href="index.jsp"
							class="nav-link">Home</a></li>
						<li class="nav-item"><a href="Seats.jsp" class="nav-link">About</a></li>
						<li class="nav-item"><a href="destination.html"
							class="nav-link">Destination</a></li>
						<li class="nav-item"><a href="Seats.jsp" class="nav-link">Contact</a></li>
						<li class="nav-item cta"><a href="register.jsp"
							class="nav-link">LOGIN / SIGN UP</a></li>

					</ul>
				</div>
			</div>
		</nav>
		<div class="main">
			<section class="signup">
				<div class="container">
					<div class="signup-content">
						<form action=login method="post" id="signup-form" class="signup-form">
							<h2 class="form-title">Login</h2>
							<div class="form-group">
								<input type="text" class="form-input" name="name" id="name"
									placeholder="Your Name" />
							</div>
							<div class="form-group">
								<input type="email" class="form-input" name="email" id="email"
									placeholder="Your Email" />
							</div>
							<div class="form-group">
								<input type="text" class="form-input" name="password"
									id="password" placeholder="Password" /> <span
									toggle="#password"
									class="zmdi zmdi-eye field-icon toggle-password"></span>
							</div>
							<div class="form-group">
								<input type="submit" name="submit" id="submit"
									class="form-submit" value="Login" />
								<div style="color: red">${errorMessage}</div>
							</div>
						</form>
					</div>
				</div>
			</section>

		</div>
	</form>
	<!-- JS -->
	<script src="jquery/jquery.min.js"></script>
	<script src="js/mainregister.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>