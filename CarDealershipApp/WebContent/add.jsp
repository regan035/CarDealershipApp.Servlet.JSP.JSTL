<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.dealership.Car" %>
<%Car car=(Car)session.getAttribute("car"); %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        <a class="nav-link" href="transaction.jsp">View Transaction</a>
      </li>

    </ul>
    <form class="form-inline my-2 my-lg-0" action ="CarDealershipServlet" method="post" >
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
 
 <form action="CarDealershipServlet" method="post" >
  <div class="form-group">
    <label for=brand">Brand</label>
    <input type="text" class="form-control" name="brand" id="brand" placeholder="Brand">
  </div>
    <div class="form-group">
    <label for="lastName">Model</label>
    <input type="text" class="form-control" name="model" id="model" placeholder="model">
  </div>

     Condition
    <select class="form-control" name = "condition" id="condition">
      <option value="new">New</option>
      <option value="used">Pre-Own</option>
    </select>
  <br>
    Body Type
    <select class="form-control" name = "type">
      <option value="sedan">Sedan</option>
      <option value="couple">Couple</option>
      <option value="suv">SUV</option>
      <option value="pickup">Pickup </option>
      <option value="minivan">Minivan</option>
    </select>
  <br>
    Engine Type
    <select class="form-control" name = "enginType">
      <option value="gasoline">Gasoline</option>
      <option value="diesel">Diesel</option>
      <option value="hybrid">Hybrid</option>
      <option value="electric">Electric </option>
    </select>
  <br>
     Transmission
    <select class="form-control" name = "transmission">
      <option value="auto">Automatic</option>
      <option value="manual">Manual</option>
    </select>
  <br>
  <div class="form-group">
    <label for="mileage">Mileage</label>
    <input type="text" class="mileage" name="mileage" id="mileage">
  </div>
<div class="custom-file">
  <input type="file" class="custom-file-input" id="img">
  <label class="custom-file-label" name="img" for="img">Choose file</label>
</div>
<div class="form-group">
    <label for="description">Description</label>
    <textarea class="form-control" id="description" name="description" rows="3"></textarea>
  </div>
  <div class="form-group">
    <label for="price">Price</label>
    <input type="text" class="mileage" name="mileage" id="mileage">
  </div>
 
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
 
 
</body>
</html>