<%@ page language="java" contentType="text/html; charset=UTF-8"

  pageEncoding="UTF-8"%>

  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

   

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>myBookings</title>

<link rel="stylesheet"

 href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>





nav {

 min-width: 150px;

}



main {

 margin-top: 50px;

}

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

 ${msg}

	



<div class="topnav">

<!-- <a href="/TheatreTable/List">All Theater</a>

 -->

 <a href="/movies">Home</a>

 <a href="/updatePass"> Update Password</a>

 <a href="/logout">Logout</a>

</div>



<h2 style="color: green;">${book}</h2>



<%-- ${user.name}

${bookings} --%>



<h1 style="text-align: center">Your Bookings</h1>



<div class="container">

<main><c:if test="${bookings.size()>0}">

  <table class="table">

   <thead class="table-dark">

   <tr>

    <th>BookinID</th>

    <th>Name</th>

    <th>Theater</th>

    <th >Movie Name</th>

    <th>Show Time</th>

    <th>Seats</th>

    <th>Total Price</th>

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



    </tr>

   </c:forEach>

   </tbody>



  </table></c:if></main>

   

  </div>

</body>

</html>