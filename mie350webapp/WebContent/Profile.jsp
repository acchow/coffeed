<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Profile Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
				.tg  {border-collapse:collapse;border-color:#9ABAD9;border-spacing:0;}
				.tg td{background-color:#EBF5FF;border-color:#9ABAD9;border-style:solid;border-width:1px;color:#444;
  				font-family:Arial, sans-serif;font-size:14px;overflow:hidden;padding:10px 20px;word-break:normal;}
				.tg th{background-color:#409cff;border-color:#9ABAD9;border-style:solid;border-width:1px;color:#fff;
  				font-family:Arial, sans-serif;font-size:14px;font-weight:normal;overflow:hidden;padding:10px 20px;word-break:normal;}
				.tg .tg-9ydz{border-color:#333333;font-weight:bold;text-align:center;vertical-align:top}
				.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
				.tg .tg-7btt{border-color:inherit;font-weight:bold;text-align:center;vertical-align:top}
				</style>

<style  type="text/css"> hr.dashed {
  								border-top: 3px dashed #bbb;
								}
							</style>
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
<%@ include file="navbar2.jsp"%>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<!-- You can put left sidebar links here if you want to. -->
			</div>
			<div class="col-sm-8 text-left">
				<h1><i>Profile Settings</i></h1>
		
				<h2>Hi, Ali!</h2>
				This is your Cof-feed Profile. Feel free to edit/ update your profile. <br /> <br />
				
				<center>
				<img src="img/profile_picture.jpg" width="15%"> <br><br>
				
				
				
				<table class='tg'>
					<tbody>
 					 <tr>
  						  <td><b>User ID</b></td>
    						<td>alimaga</td>
 					 </tr>
  						<tr>
   						 <td><b>Name</b></td>
   						 <td>Ali Maga</td>
  						</tr>
  					<tr>
    					<td><b>Email</b></td>
   						 <td>ali.maga@coffeed.com</td>
  						</tr>
 					 <tr>
 					   <td><b>Experience Level</b></td>
    					<td>Barista</td>
  					</tr>
  					<tr>
   							<td><b>Roast Level</b></td>
    						<td>Dark</td>
 					 </tr>
 						 <tr>
    				<td><b>Preferred Drink(s)</b></td>
    				<td>Espresso, <br>Americano, <br>Turkish Coffee</td>
 					 </tr>
  						<tr>
   					 <td><b>Consumption</b></td>
   						 <td>3-4 cups a day</td>
  						</tr>
					</tbody>
					</table>
					<br><br>
					
					<h4>Feel like anything is incorrect / missing? 
					No problem at all! <br> Just fill out this form:</h4>
					
					
					<form method="POST" action='UserController' name="frmAddUser">
							userID: <input type="text" readonly="readonly" name="userid"
							value="<c:out value="${user.userid}" />"><br>
							First Name: <input type="text" name="firstName"
							value="<c:out value="${user.firstName}" />"><br>
							Last Name : <input type="text" name="lastName"
							value="<c:out value="${user.lastName}" />"><br>
							Email: <input type="text" name="email"
							value="<c:out value="${user.email}" />"> <br>
							<br>
							<br>
							Experience Level:<select>
								<option value="Newbie">Newbie (1)</option>
								<option value="Beginner">Beginner (2)</option>
								<option value="Intermediate">Intermediate (3)</option>
								<option value="Advanced">Advanced (4)</option>
								<option value="Barista">Barista (5)</option>
							
							</select> <br><br><br>
							enter old password: <input type="PASSWORD" name="old_password"
							value="<c:out value="${user.old_password}" />"><br>
							enter new password: <input type="PASSWORD" name="new_password"
							value="<c:out value="${user._password}" />"><br>
							
							<input
							type="submit" value="Submit" /> </form>
						
							
							<br><br>
							<hr class="dashed">
							
							<br><br>
							<h2>Please complete This Coffe-ersonality Test!</h2>
							<h4>This way Cof-feed can bring you a more personalized selections! Enjoy :)</h4>
							<form method="post" action="UserPreferenceController" name="userPreference">
							Select your preferred <b>Roast Level</b>:<br> <input type="radio" name ="RoastLevel" 
							value= "blonde" checked>Blonde
							<input type="radio" name ="RoastLevel" value= "medium">Medium  
							<input type="radio" name ="RoastLevel" value= "dark">Dark  <br><br>
							
							Select your preferred <b>Drink(s)</b>:<br> <input type="checkbox" name ="drinkType" 
							value= "latte" checked>Latte  
							<input type="checkbox" name ="drinkType" value= "macchiato">Macchiato  
							<input type="checkbox" name ="drinkType" value= "espresso">Espresso
							<input type="checkbox" name ="drinkType" value= "americano">Americano
							<input type="checkbox" name ="drinkType" value= "mocha">Mocha
							<input type="checkbox" name ="drinkType" value= "turkishcoffee">Turkish Coffee
							<input type="checkbox" name ="drinkType" value= "macha">Macha <br> <br>
							
							Please indicate how many cups of coffee you daily consume:<br> 
							<select>
								<option value="1">Less than 1 cup (1)</option>
								<option value="2">1 - 2 cups (2)</option>
								<option value="3">3 - 4 cups (3)</option>
								<option value="4">4 - 5 cups (4)</option>
								<option value="5">5+ cups (5)</option>
							
							</select> <br><br>
							<input
							type="submit" value="Submit" /> </form>
					
				</center>
				<br />
				<br />
			</div>
			<div class="col-sm-2 sidenav">
				<!-- You can put right sidebar links here if you want to. -->
				<img src = "img/Logo.jpg" width="70%">
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>