<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<title>Cof-feed</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- Date Picker Javascript -->
<!-- https://jqueryui.com/datepicker/ -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<body>

	<%@ include file="navbar.jsp"%>



	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<!-- You can put left sidebar links here if you want to. -->
			</div>
			<div class="col-sm-8 text-left">
				<h1>Welcome to Cof-feed!</h1>
				<p>We're here to connect users with the best coffee experiences 
				in Toronto. Whether this be for coffee beans, cafes or coffee accessories 
				(e.g., machines),��Cof-feed�� (i.e, coffee feed,) displays an interactive feed 
				of coffee-related resources that allows coffee lovers to explore, recommend 
				and learn from the Toronto coffee community. With so many options and varieties 
				it is often challenging to find the best coffee. ��Cof-feed�� aims to act as a 
				comprehensive guide for all users by providing reviews, recommendations and 
				opinions from like-minded individuals, and helping to explore the coffee 
				options Toronto has to offer.</p>
				<hr>
				<h3>Connecting you with the best coffee experiences in Toronto</h3>
				<p>Explore: 
				<ul>
					<li>Shops</li>
					<li>Products</li>
					<li>Accessories</li>
				</ul>
				</p>
			</div>
			<div class="col-sm-2 sidenav">
				<!-- You can put right sidebar links here if you want to. -->
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>


</body>
</html>
