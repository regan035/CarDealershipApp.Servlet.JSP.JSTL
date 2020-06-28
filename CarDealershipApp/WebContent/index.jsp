<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.dealership.Car" %>

<%

Car car=(Car)session.getAttribute("car"); 


%>   

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
 <div class="jumbotron">
  <h3 class="display-5">Hello, world!</h3>
  <p class="lead">Your have x cars for sale. Total inventory value is $ x.xx.</p>
  <p><%out.println("car: " + car.getPrice()); %></p> 
</div>
<div class = "main">

</div>

<%--if car arraylist empty => display Adding link, 
    else =>display Car card  --%>
<c:if test="${not empty cars}">
<div class="card" style="width: 18rem;">
  <img src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">${brand}</h5>
    <h5 class="card-title">${model}</h5>
    <h5 class="card-title">${mileage}</h5>
    <h5 class="card-title">${price}</h5>
    <a href="carDetail.jsp" class="btn btn-primary">View Details</a>
  </div>
</div>
</c:if>
<c:if test="${empty cars }">
Please add cars to your inventory 
<a class="nav-link" href="add.jsp">Add Inventory</a>
</c:if>


</body>
</html>