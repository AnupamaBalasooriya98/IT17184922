<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <style type="text/css">
    body{
      background-image: url("img/doc-profile.jpg");
      background-repeat: no-repeat;
      background-position: center;
      background-size: 1150px;
      background-attachment: scroll;
      background-color: #99e6e6;
    }
  </style>
	<meta charset="ISO-8859-1">
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="Components/jquery-3.5.1.min.js"></script>
<script src="Components/main.js"></script>

<title>View Doctors</title>
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

    <!-- Doctors table -->
    <div class="container mt-5">
      <h2 style="color: white;">See doctor details</h2>
      <table class="table table-striped table-dark text-center" id="tblDoctors">
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
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>001</td>
            <td>Dr. Kolambage</td>
            <td>kolambage@gmail.com</td>
            <td>0912275245</td>
            <td>Allergy And Immunology</td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>002</td>
            <td>Dr. Jayantha</td>
            <td>jayantha@gmail.com</td>
            <td>0912295638</td>
            <td>Ayurvedic Physician</td>
          </tr>
        </tbody>
      </table>
    </div>
</body>
</html>