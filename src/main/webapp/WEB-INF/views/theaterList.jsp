<%@ page language="java" contentType="text/html; charset=UTF-8"

 pageEncoding="UTF-8"%>

<%-- <%@ taglib prefix="sp" uri="http://www.springframework.org/tags/form" %> 

 --%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>

<html>

<head>

<meta name="viewport" content="width=device-width, initial-scale=1"><title>Theater List</title>

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

 ${msg}

	



<div class="topnav">

<!-- <a href="/TheatreTable/List">All Theater</a>

 -->

 <a href="/MovieTable/addMovie">Add Movie</a>

 <a href="/MovieTable/movieList"> All Movies</a>

  <a href="/allBookings">All Bookings</a>

 <a href="/logout">Logout</a>

</div>





 <div class="container">



 <%-- <sp:form method="post" action="addTheatre" modelAttribute="addTheatre">

 --%>

 <main>

  <c:if test="${theaters.size()>0}">



  <h3>Theater List</h3>

  <table class="table table-boarded table-striped">

   <thead class="table-dark">

   <tr>

    <th>Theater Id</th>

    <th>Theater Name</th>

    <th>capacity</th>

    <th>city</th>

    <th width="80px">Update</th>

    <th width="80px">Delet</th>

   </tr>

   </thead>

   <tbody>

   <c:forEach var="theatre" items="${theaters}">



    <tr>

    <td>${theatre.theatreId}</td>

    <td>${theatre.thatreName}</td>

    <td>${theatre.theaterCapacity}</td>

    <td>${theatre.city}</td>

    <td><a

     href="/TheatreTable/updateTheater/${theatre.theatreId}"

     class="btn btn-warning">Update</a></td>

    <td><a

     href="/TheatreTable/deletTheater/${theatre.theatreId}"

     class="btn btn-warning">Delet</a></td>



    </tr>

   </c:forEach>



   </tbody>



  </table>

  </c:if>

 </main>



<a href="addTheater" class="btn btn-primary">Add Theater</a>





 </div>

</body>

</html>