<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

<title>Cof-Feed - Feed</title> 
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
#myDIV {
  width: 100%;
  padding: 50px 0;
  text-align: center;
  margin-top: 20px;
}
</style>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://use.fontawesome.com/a6f0361695.js"></script>
<link rel="stylesheet" type="text/css" href="css/mystyle.css">

<script>
function myFunction1() {
  var x = document.getElementById("SeeReview1");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
</script>
<script>
function myFunction2() {
  var x = document.getElementById("AddReview1");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
</script>
<script>
function myFunction3() {
  var x = document.getElementById("SeeReview2");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
</script>
<script>
function myFunction4() {
  var x = document.getElementById("AddReview2");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
</script>

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
	<h1><img src="img/coffeed.png"  width="100" height="100" >COF-FEED</h1>
				

				
<div class="listing-section">
  
  <div class="product">
   
    <div class="text-box">
      <h2 class="item">Medium Roasted Coffee - Coffee Bros NY.</h2>
      <img src="img/mrc2.jpg"  width="200" height="200" >
      <h3 class="price">$5.99</h3>
      <p class="description"> Best coffee beans in the GTA. Come get yours before they're all sold out. </p>
      <label for="Ratings">Ratings: 3.8</label><i class="fa fa-star"></i>
      </div>
      <br><button onclick="myFunction1()">See Reviews</button>

<div id="SeeReview1">
 <a class="float-left" href=""><strong> Michael Gruninger </strong></a>
        	            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        <span class="float-right"><i class="text-warning fa fa-star"></i></span>
        	            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
        	            <span class="float-right"><i class="text-warning fa fa-star"></i></span>

        	       <div class="clearfix"></div>
        	        <p>Lorem Ipsum is simply dummy text of the pr make  but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
        	        <p>

 <a class="float-left" href=""><strong> Emily King </strong></a>
        	            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        <span class="float-right"><i class="text-warning fa fa-star"></i></span>
        	            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
        	            <span class="float-right"><i class="text-warning fa fa-star"></i></span>

        	       </p>
        	       <div class="clearfix"></div>
        	        <p>Lorem Ipsum is simply dummy text of the pr make  but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
        	        <p>

</div>

  
    
	
	<button onclick="myFunction2()">Add Reviews</button>  
	
	<div id="AddReview1">
	    <br><form action="/html/tags/html_form_tag_action.cfm" method="post">
		<div>
		<textarea name="comments" id="comments" style="font-family:sans-serif;font-size:1.2em;">
		</textarea>
		</div>
		<input type="submit" value="Submit">
		</form>
 <div class="form-group">
  <div style = "position:relative; right:15px">
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="fa fa-star"></i></span>
   <select class="form-control" id="rate">
      <option value="1star">1</option>
      <option value="2stars">2</option>
      <option value="3stars">3</option>
      <option value="4stars">4</option>
      <option value="5stars">5</option>
    </select>
    </div>
  </div>
</div>
	</div>

 </div>


</div>

  	

	<div class="product">
    <div class="text-box">
      <br><br><h2 class="item"> Espresso - CoffeeMania.</h2>
      <img src="img/espresso.jpg"  width="200" height="200" >
      <h3 class="price">$5.99</h3>
      <p class="description"> Best coffee beans in the GTA. Come get yours before they're all sold out. </p>
      </div>
      
      <label for="Ratings">Ratings: 4.2 </label><i class="fa fa-star"></i>
      <br><button onclick="myFunction3()">See Reviews</button>

<div id="SeeReview2">
 <a class="float-left" href=""><strong> Michael Gruninger </strong></a>
        	            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        <span class="float-right"><i class="text-warning fa fa-star"></i></span>
        	            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
        	            <span class="float-right"><i class="text-warning fa fa-star"></i></span>

        	       <div class="clearfix"></div>
        	        <p>Lorem Ipsum is simply dummy text of the pr make  but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
        	        <p>

 <a class="float-left" href=""><strong> Emily King </strong></a>
        	            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
                        <span class="float-right"><i class="text-warning fa fa-star"></i></span>
        	            <span class="float-right"><i class="text-warning fa fa-star"></i></span>
        	            <span class="float-right"><i class="text-warning fa fa-star"></i></span>

        	       </p>
        	       <div class="clearfix"></div>
        	        <p>Lorem Ipsum is simply dummy text of the pr make  but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
        	        <p>

</div>

  
    
	
	<button onclick="myFunction4()">Add Reviews</button>  
	
	<div id="AddReview2">
	    <br><form action="/html/tags/html_form_tag_action.cfm" method="post">
		<div>
		<textarea name="comments" id="comments" style="font-family:sans-serif;font-size:1.2em;">
		</textarea>
		</div>
		<input type="submit" value="Submit">
		</form>
 	 <div class="form-group">
  <div style = "position:relative; right:15px">
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="fa fa-star"></i></span>
   <select class="form-control" id="rate">
      <option value="1star">1</option>
      <option value="2stars">2</option>
      <option value="3stars">3</option>
      <option value="4stars">4</option>
      <option value="5stars">5</option>
    </select>
    </div>
  </div>
	</div>
	</div>
	</div>

</div>



</div>
