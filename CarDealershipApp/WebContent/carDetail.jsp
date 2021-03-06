<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.dealership.Car" %>
<%Car car=(Car)session.getAttribute("car"); %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Car Dealership</title>
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


 <form action="TransactionServlet" method="post" >
  <img src="..." class="mr-3" alt="...">
  <div class="media-body">
    <h5 class="mt-0">Brand: ${brand}</h5>
    <h5 class="mt-0">Model: ${model}</h5>
    <h5 class="mt-0">Type: ${type}</h5>
    <h5 class="mt-0">Engine: ${engineType}</h5>
    <h5 class="mt-0">Transmission: ${transmission}</h5>
    <h5 class="mt-0">Mileage: ${mileage}</h5>
    <h5 class="mt-0">Condition: ${condition}</h5>
    <h5 class="mt-0">Date of Inventory: ${dateOfInventory}</h5>
    <h5 class="mt-0">Sale on Bit: ${placeaBit}</h5>
    <h5 class="mt-0">Price: ${price}</h5>
    
  </div>
  <button type="submit" class="btn btn-primary">Car Sold</button>
</form>


</body>
</html>