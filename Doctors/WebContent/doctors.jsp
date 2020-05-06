<%@page import="model.Doctor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctors management</title>

<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.5.1.min.js"></script>
<script src="Components/main.js"></script>

</head>
<body>

<div class="container">
	<div class="row">
		<div class="col-6">
			<h1>Doctor management V1.5</h1>
			
			<form id="formDoctors" name="formDoctors">
				Doctor ID:
				<input id="id" name="id" type="text" class="form-control form-control-sm">
				<br>
				Doctor Name:
				<input id="name" name="name" type="text" class="form-control form-control-sm">
				<br>
				Email:
				<input id="email" name="email" type="text" class="form-control form-control-sm">
				<br>
				Phone Number:
				<input id="phone" name="phone" type="text" class="form-control form-control-sm">
				<br>
				Specialization:
				<input id="spec" name="spec" type="text" class="form-control form-control-sm">
				<br>
				<input type="button" id="btnAdd" value="ADD" class="btn btn-outline-primary">
				<input type="button" id="btnAdd" value="UPDATE" class="btn btn-outline-secondary">
				<input type="button" id="btnAdd" value="DELETE" class="btn btn-outline-danger">
              	<input type="button" id="btnAdd" value="CLEAR" class="btn btn-outline-info">
			</form>
			
			<div id="alertSuccess" class="alert alert-success"></div>
			<div id="alertError" class="alert alert-danger"></div>
			<br>
			<div id="divDoctorsGrid">
				<%
					Doctor doc = new Doctor();
					out.print(doc.read());
				%>
			</div>
		</div>
	</div>
</div>

</body>
</html>