<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Cof-feed Home Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
button{
  width:100px;
  height:25px;
}

button .msg-follow,
button .msg-following,
button .msg-unfollow{
  display: none;
}

button .msg-follow{
  display: inline;
}

button.following .msg-follow{
  display: none;
}

button.following .msg-following{
  display: inline;
}

button.following:not(.wait):hover .msg-following{
  display: none;
}

button.following:not(.wait):hover .msg-unfollow{
  display: inline;
}
</style>

<script type="text/javascript">
$('button').click(function(){
	  var $this = $(this);
	  $this.toggleClass('following')
	  if($this.is('.following')){
	    $this.addClass('wait');
	  }
	}).on('mouseleave',function(){
	  $(this).removeClass('wait');
	})
</script>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
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




  <h1>Home Page </h1>
  
 <div class="container-fluid text-center">
  <div align="center"> 
  
  	
 	 <img src="img/Logo.jpg" width= "15%"> 
 	 <b> Find coffee/ shops/ products here </b> <input type="text" placeholder="Search.." >
 	 <b> in... </b>
	 <img src= "img/coffeed.jpg" width = "15%" >
 	 </div>
		<div class="row content">
			<div class="col-sm-2 sidenav">
				<!-- You can put left sidebar links here if you want to. -->
			</div>
			<div class="col-sm-8 text-left">
				<h1><i>FOLLOWINGS:</i></h1>
				<h3>Engage with your <b>followers/ follwings </b> here. Explore the new recommended users / shops! <h3>				
				<hr>
				
			</div>
<div class="container">
<div class="row bootstrap snippets bootdey">
    <div class="col-md-8 col-xs-12">

        <div class="panel-body">
          <ul class="list-group list-group-dividered list-group-full">
            <li class="list-group-item">
    
   
                  <div class="media-body">
                  <div >
                  <button class="follow" class="pull-left">
  				  <span class="msg-follow">Follow</span>
				  </button>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                  <a class="name" href="javascript:void(0)">Coffee Bros NY </a>
                 
                  </div>
                  <div>
                  <br><button type="button" class="pull-left">Follow</button>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                  <a class="name" href="javascript:void(0)">Kokoric </a>
                  
                  </div>
                
                 <div>
                  <br><button type="button" class="pull-left">Follow</button>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                  <a class="name" href="javascript:void(0)">CoffeeMania </a>
                  
                </div>
                
                
                 <div>
                 <br><button type="button" class="pull-left">Follow</button>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                 <a class="name" href="javascript:void(0)">Moose Cafe </a>
                </div>
                </div>
            </li>
            
           
          </ul>
        </div>
      </div>
    </div>
</div>
</div>
			<div class="col-sm-2 sidenav">
				<!-- You can put right sidebar links here if you want to. -->
			</div>
		</div>
	</div>




	<%@ include file="footer.jsp"%>
</html>