<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Doctors</title>
  </head>
  <body>

    <!-- navigation bar -->
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a href="home.html" class="navbar-brand nav-link">
        <img src="img/hospital-logo.jpg" style="height: 50px; width: 50px">   Hospitals</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav ml-auto text-right">

              <a class="nav-link" href="home.html">
                <img src="img/home.png" style="height: 30px; width: 30px"> Home
              </a>

              <a class="nav-link" href="aboutUs.html">
                <img src="img/user.png" style="height: 30px; width: 30px"> About Us
              </a>

              <a class="nav-link" href="contactUs.html">
                <img src="img/contact.png" style="height: 30px; width: 30px"> Contact Us
              </a>
          </div>
        </div>
    </nav>

    <!-- Search a doctor -->
    <div class="container mt-5">
      <h3>Find a doctor</h3>
      <div class="row">
        <div class="col-5">
          <form>
            <div class="form-group">
              <input type="email" class="form-control" id="searchId" 
                          placeholder="Enter doctor ID">
            </div>
          </form>
        </div>
        <div class="col-1">
          <button type="button" class="btn btn-light" id="search">
            <img src="img/search.png" style="height: 25px; width: 25px">
          </button>
        </div>
      </div>
    </div>

    <!-- CRUD operation form -->
    <div class="container mt-5">
      <h3>Doctors' profiles</h3>
      <div class="row">
        <div class="col-6">
          <div class="row mt-3">
            <div class="col-4">
              <p>Enter doctor ID:</p>
            </div>
            <div class="col-8">
              <input class="form-control" type="text" placeholder="Enter ID" id="enterId">
            </div>
          </div>
          <div class="row mt-3">
            <div class="col-4">
              <p>Enter doctor name:</p>
            </div>
            <div class="col-8">
              <input class="form-control" type="text" placeholder="Enter name" id="enterName">
            </div>
          </div>
          <div class="row mt-3">
            <div class="col-4">
              <p>Enter email:</p>
            </div>
            <div class="col-8">
              <input class="form-control" type="text" placeholder="Enter email" id="enterEmail">
            </div>
          </div>
          <div class="row mt-3">
            <div class="col-4">
              <p>Enter phone number:</p>
            </div>
            <div class="col-8">
              <input class="form-control" type="text" placeholder="Enter phone number" id="enterPhone">
            </div>
          </div>
          <div class="row mt-3">
            <div class="col-4">
              <p>Select specialization:</p>
            </div>
            <div class="col-8">
              <select class="form-control" id="specialization">
                <option> -- Select -- </option>
                <option>Internal Medicine Physician</option>
                <option>Pediatrician</option>
                <option>Obstetrician/Gynecologist (OB/GYN)</option>
                <option>Surgeon</option>
                <option>Psychiatrist</option>
              </select>
            </div>
          </div>
          <div class="row mt-5 mb-5">
            <div class="col-3 text-center">
              <button type="button" class="btn btn-outline-primary" id="btnAdd">ADD</button>
            </div>
            <div class="col-3 text-center">
              <button type="button" class="btn btn-outline-secondary" id="btnUpdate">UPDATE</button>
            </div>
            <div class="col-3 text-center">
              <button type="button" class="btn btn-outline-danger" id="btnDelete">DELETE</button>
            </div>
            <div class="col-3 text-center">
              <button type="button" class="btn btn-outline-info" id="btnClear">CLEAR</button>
            </div>
          </div>
        </div>
        <div class="col-6">
          <div class="container text-center">
            <img src="img/18959532-medical-equipment-doodle.jpg" style="width: 300px; height: 300px">
          </div>
        </div>
      </div>
    </div>

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