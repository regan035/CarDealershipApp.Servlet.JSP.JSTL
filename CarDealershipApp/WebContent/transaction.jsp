<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dealership.Car" %>
<%Car car=(Car)session.getAttribute("car"); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Transaction</title>
<link rel = "stylesheet" type="text/css" href="./styles/style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="#">Car Dealership</a>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="add.jsp">Add Inventory</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="transactionReport.jsp">View Transaction</a>
      </li>

    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

<div class = "main">
 
 <form action="TransactionServlet" method="post" >
 <div class="form-group">
    <label for="inventoryNumber">Inventory Number</label>
    <input type="text" class="form-control" name="inventoryNumber" id="inventoryNumber" placeholder="Inventory Number">
  </div>
  <div class="form-group">
    <label for="firstName">First Name</label>
    <input type="text" class="form-control" name="firstName" id="firstName" placeholder="First Name">
  </div>
  <div class="form-group">
    <label for="lastName">Last Name</label>
    <input type="text" class="form-control" name="lastName" id="lastName" placeholder="Last Name">
  </div>
  <div class="form-group">
    <label for="street">Street Address</label>
    <input type="text" class="form-control" name="street" id="street" placeholder="Street Address">
  </div>
    <div class="form-group">
    <label for="city">City</label>
    <input type="text" class="form-control" name="city" id="city" placeholder="City">
  </div>
    <div class="form-group">
    <label for="state">State</label>
    <input type="text" class="form-control" name="state" id="state" placeholder="State">
  </div>
      <div class="form-group">
    <label for="zip">Zip Code</label>
    <input type="text" class="form-control" name="zip" id="zip" placeholder="Zip Code">
  </div>
  <div class="form-group">
    <label for="dateofSold">Date of Sold</label>
    <input type="date" class="form-control" name="dateOfSold" id="dateOfSold" placeholder="Date of Sold">
  </div>

 
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
 

</div>
</body>
</html>