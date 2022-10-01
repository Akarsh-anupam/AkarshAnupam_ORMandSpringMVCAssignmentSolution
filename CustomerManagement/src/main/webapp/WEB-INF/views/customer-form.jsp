<%@ page isELIgnored = "false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Customer Registration Form</title>
</head>
<body>
	<div class="container">
  <h2>Customer Registration Form</h2>
  <form class="form-horizontal" action="save" method="post">
    <div class="form-group">
		<input type="hidden" class="form-control" placeholder="Enter Id" name="id" value="${customer.id}">
	</div>
	<div class="form-group">
	  <input type="text" class="form-control" placeholder="Enter First Name" name="fName" value="${customer.fName}">
	</div>
	<div class="form-group">
	  <input type="text" class="form-control" placeholder="Enter Last Name" name="lName"
	    value="${customer.lName}">
	</div>
	<div class="form-group">
	  <input type="text" class="form-control" placeholder="Enter Email" name="email"
	    value="${customer.email}">
	</div>
	
	<button class="btn btn-outline-warning btn-lg" type="submit" class="btn btn-primary">Save</button>
	
  </form>
  
</div>
	<br><br><br><br><br><br>
	<a class="btn btn-success" href="/CustomerManagement/customers/customerList">Home Page</a>
</body>
</html>