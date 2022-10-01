<%@ page isELIgnored = "false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="jumbotron text-center p-3 my-3 bg-primary text-blue">
		<h1>Customer Management Relationship</h1>
		<a href="customerForm" class="btn btn-info" role="button">Add New Customer</a>
</div>

<div class = "container">
		<table class="table table-hover table-condensed">
    <thead>
      <tr>
        <th>SNo.</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Actions</th>
      </tr>
    </thead>
    <c:forEach var = "customer" items="${customers}" varStatus="c">
    <tbody>
    	<tr>
    		<td>${c.count}</td>
    		<td>${customer.fName}</td>
    		<td>${customer.lName}</td>
    		<td>${customer.email}</td>
    		<td>
    			<a class = "btn btn-warning" href = "update?id=${customer.id}">Update</a>
    			<a class = "btn btn-danger" href = "delete?id=${customer.id}"
    			onclick="if (!(confirm('Are you sure you want to delete the Customer?'))) return false">Delete</a>
    		</td>
    	</tr>
    </tbody>
    </c:forEach>
  </table>
	</div>
</body>
</html>