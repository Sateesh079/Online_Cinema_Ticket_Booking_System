<%@ page language="java" contentType="text/html; charset=UTF-8"

  pageEncoding="UTF-8"%>

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

   

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>All Bookings</title>







<link rel="stylesheet"

 href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">



<style>

h3 {

 text-align: centre;

 margin: :20px;

 colour: red

}



.topnav {

 overflow: hidden;

 background-color: #333;

}



.topnav a {

 float: left;

 color: #f2f2f2;

 text-align: center;

 padding: 14px 16px;

 text-decoration: none;

 font-size: 17px;

}



.topnav a:hover {

 background-color: #ddd;

 color: black;

}



.topnav a.active {

 background-color: #04AA6D;

 color: white;

}









main {

 margin-top: 50px;

}

</style>

</head>

<body>

<div class="topnav">

<!-- <a href="/TheatreTable/List">All Theater</a>

 -->

 <a href="/MovieTable/addMovie">Add Movie</a>

 <a href="/MovieTable/movieList"> All Movies</a>

 <a href="/TheatreTable/List">All Theater</a>



 <a href="/TheatreTable/addTheater">Add Theater</a>

 <a href="/logout">Logout</a>

</div>

<div class="container">

<main><c:if test="${bookings.size()>0}">

  <table class="table table-boarded table-striped">

   <thead class="table-dark">

   <tr>

    <th>BookinID</th>

    <th>Name</th>

    <th>Theater</th>

    <th >Movie Name</th>

    <th>Show Time</th>

    <th>Seats</th>

    <th>Total Price</th>

    <th>UserID</th>

   </tr>

   </thead>

   <tbody>

   <c:forEach var="bk" items="${bookings}">



    <tr>

    <td>${bk.bookingId}</td>

    <td>${bk.name}</td>

    <td>${bk.theaterName}</td>

    <td>${bk.movieName}</td>

    <td>${bk.showTime}</td>

    <td>${bk.numOfSeats}</td>

    <td>${bk.price}</td>

    <td>${bk.userID }



    </tr>

   </c:forEach>

   </tbody>



  </table></c:if></main></div>

</body>

</html>