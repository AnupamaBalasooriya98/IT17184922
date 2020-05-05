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
<title>View Doctors</title>
</head>
<body>
	<!-- navigation bar -->
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a href="Home.jsp" class="navbar-brand nav-link">
        <img src="img/hospital-logo.jpg" style="height: 50px; width: 50px">   Hospitals</a>

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

    <!-- Doctors table -->
    <div class="container mt-5">
      <h3>See doctors</h3>
      <table class="table" id="tblDoctors">
        <thead class="thead-dark">
          <tr>
            <th scope="col">#</th>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Email</th>
            <th scope="col">Phone</th>
            <th scope="col">Specialization</th>
          </tr>
        </thead>
      </table>
    </div>
</body>
</html>