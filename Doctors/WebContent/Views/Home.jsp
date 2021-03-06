<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="Components/jquery-3.5.1.min.js"></script>
<script src="Components/main.js"></script>

<title>Doctors</title>
</head>
<body>
      <!-- navigation bar -->
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a href="Home.jsp" class="navbar-brand nav-link">
        <img src="img/hospital-logo.jpg" style="height: 40px; width: 40px">   Hospitals</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav ml-auto text-right">

              <a class="nav-link" href="Home.jsp">
                <img src="img/home.png" style="height: 30px; width: 30px"> Home
              </a>

              <a class="nav-link" href="">
                <img src="img/user.png" style="height: 30px; width: 30px"> About Us
              </a>

              <a class="nav-link" href="">
                <img src="img/contact.png" style="height: 30px; width: 30px"> Contact Us
              </a>
          </div>
        </div>
    </nav>

    <!-- banner -->
    <div class="container">
        <div class="row mt-5">
            <img src="img/Banner.jpg" style="height: 400px; width: 1150px">
        </div>
    </div>

    <!-- Navigation through pages -->
    <div class="container">
    	<div class="row mt-5 mb-5">
    		<!-- View page -->
    		<div class="col-6">
    			<a href="ViewDoctors.jsp">
    				<div class="card bg-white text-black">
    					<img src="img/doctor.jpg" class="card-img" style="height: 250px; width: 500px">
    				</div>
    				<div class="card-img-overlay">
    					<div class="card-header" style="background: transparent;">
    						<h1 class="text-right" style="color: black;">View doctors</h1>
    					</div>
	    				<div class="card-body" style="background: transparent;">
	    					<p class="text-right" style="color: black; font-size: 20px">Click here to view doctors</p>
	    				</div>
    				</div>
    			</a>
    		</div>

    		<!-- AddEdit page -->
    		<div class="col-6">
    			<a href="AddEdit.jsp">
    				<div class="card bg-white text-black">
    					<img src="img/reports.png" class="card-img" style="height: 250px; width: 250px">
    				</div>
    				<div class="card-img-overlay">
    					<div class="card-header" style="background: transparent;">
    						<h1 class="text-right" style="color: black;">Add and Edit doctors</h1>
    					</div>
	    				<div class="card-body" style="background: transparent;">
	    					<p class="text-right" style="color: black; font-size: 20px">Click here to add and edit doctors</p>
	    				</div>
    				</div>
    			</a>
    		</div>
    	</div>
    </div>
</body>
</html>