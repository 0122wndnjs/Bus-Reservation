<!DOCTYPE html>
<html lang="en">
<head>
<title>JK LINES</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
	integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ"
	crossorigin="anonymous">


<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">

<script type="text/javascript">
$(document).ready(function() {
	$('button').click(function() {
		$('#output').text('');
	});
	/* ==== # Checkbox Change Event ==== */
	/* Checkbox change event */
	$('input[name="rdColors"]').change(function() {
		// 모든 radio를 순회한다.
		$('input[name="rdColors"]').each(function() {
			var value = $(this).val();				// value
			var checked = $(this).prop('checked');	// jQuery 1.6 이상 (jQuery 1.6 미만에는 prop()가 없음, checked, selected, disabled는 꼭 prop()를 써야함)
			// var checked = $(this).attr('checked');	// jQuery 1.6 미만 (jQuery 1.6 이상에서는 checked, undefined로 return됨)
			// var checked = $(this).is('checked');
			var $label = $(this).next();

			if(checked)
				$label.css('background-color', value)
			else
				$label.css('background-color', 'white');
		});
	});
	
	$('#btnOneWayDisabled').click(function() {
		$('#OneWay').prop('disabled', true);
	});
	
	$('#btnOneWayUndisabled').click(function() {
		$('#OneWay').prop('disabled', false);
	});
</script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>
<body>
	<form action=schedule method="post">
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
						<li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
						<li class="nav-item"><a href="#" class="nav-link">Destination</a></li>
						<li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
						<li class="nav-item cta"><a href="register.jsp"
							class="nav-link">LOGIN / SIGN UP</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- END nav -->

		<div class="hero-wrap js-fullheight"
			style="background-image: url('images/bg_1.jpg');"
			data-stellar-background-ratio="0.5">
			<div class="overlay"></div>
			<div class="container">
				<div
					class="row no-gutters slider-text js-fullheight align-items-center justify-content-end"
					data-scrollax-parent="true">
					<div class="col-md-7 ftco-animate mt-5"
						data-scrollax=" properties: { translateY: '70%' }">
						<h1 class="mb-4"
							data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Travel
							with JK LINES</h1>
						<p class="mb-4"
							data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">There
							are people never used JK LINES service, but there are no one used
							JK LINES service once</p>
					</div>
				</div>
			</div>
		</div>

		<section class="ftco-section ftco-no-pb ftco-no-pt">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="search-wrap-1 ftco-animate p-4">
							<form action="#" class="search-property-1">
								<div class="row">
									<div class="col-lg align-items-end">
										<div class="form-group">
											<label for="#">From</label>
											<div class="form-field">
												<div class="select-wrap">
													<!-- 		          					<div class="icon"><span class="ion-ios-arrow-down"></span></div>
 -->
													<select name="cityfrom" id="" class="form-control">
														<option value="Chicago">Chicago</option>
														<option value="DesMoines">DesMoines</option>
														<option value="Minneapolis">Minneapolis</option>
														<option value="Milwaukee">Milwaukee</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg align-items-end">
										<div class="form-group">
											<label for="#">To</label>
											<div class="form-field">
												<div class="select-wrap">
													<!-- 		          					<div class="icon"><span class="ion-ios-arrow-down"></span></div>
 -->
													<select name="cityto" id="" class="form-control">
														<option value="Chicago">Chicago</option>
														<option value="DesMoines">DesMoines</option>
														<option value="Minneapolis">Minneapolis</option>
														<option value="Milwaukee">Milwaukee</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg align-items-end">
										<div class="form-group">
											<label for="#">Depart Date</label>
											<div class="form-field">
												<input type="text" class="form-control checkin_date"
													placeholder="Depart Date">
											</div>
										</div>
									</div>
									<div class="col-lg align-items-end">
										<div class="form-group">
											<label for="OneWay">Return Date</label>
											<div class="form-field">
												<input type="text" id="OneWay" id="btnOneWayDisabled" class="form-control checkout_date" placeholder="Return Date">
											</div>
										</div>
									</div>
									<!--  -->
									<!-- <div class="col-lg align-items-end"> -->
									<div class="form-group">
										 <!-- <label for="OneWay"></label><button type="button" id="btnOneWayUndisabled">Round Trip </button>
										 <label for="OneWay"></label><button type="button" id="btnOneWayDisabled"> One Way </button> -->
									</div>
									<!-- </div> -->
										<form action=schedule method="post">
											<div class="col-lg align-self-end">
												<div class="form-group">
												<label for="OneWay"></label><button type="button" id="btnOneWayUndisabled">Round Trip </button>
										 		<label for="OneWay"></label><button type="button" id="btnOneWayDisabled"> One Way </button>
													<div class="form-field">
														<input type="submit" value="Search"
															class="form-control btn btn-primary">
														<!-- <a
															href="Schedule.jsp"></a> -->
													</div>
												</div>
											</div>
										</form>
									</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>



		<!-- loader -->
		<div id="ftco-loader" class="show fullscreen">
			<svg class="circular" width="48px" height="48px">
				<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
					stroke-width="4" stroke="#eeeeee" />
				<circle class="path" cx="24" cy="24" r="22" fill="none"
					stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
		</div>


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
		<script src="js/plus-minus-input.js"></script>
		<script src="js/main.js"></script>

	</form>
</body>
</html>