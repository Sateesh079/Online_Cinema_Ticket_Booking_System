<%@ page language="java" contentType="text/html; charset=UTF-8"

 pageEncoding="UTF-8"%>

<%-- <%@ taglib prefix="sp" uri="http://www.springframework.org/tags/form" %> 

 --%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Movie List</title>

<link rel="stylesheet"

 href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">



<style>

h3 {

 text-align: centre;

 margin: :20px;

 colour: red

}



nav {

 min-width: 150px;

}



main {

 margin-top: 50px;

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

</style>

</head>

<body>

 ${msg}

	

 <div class="topnav">

<a href="/TheatreTable/List">All Theater</a>

  <a href="/allBookings">All Bookings</a>



 <a href="/TheatreTable/addTheater">Add Theater</a>

<!-- <a href="/MovieTable/movieList"> All Movies</a>

 --> <a href="/logout">Logout</a>

</div>

	



 <div class="container">



 <%-- <sp:form method="post" action="addTheatre" modelAttribute="addTheatre">

 --%>

 <main>

  <c:if test="${movies.size()>0}">



  <h3>Movie List</h3>

  <table class="table table-boarded table-striped">

   <thead class="table-dark">

   <tr>

    <th>Movie Id</th>

    <th>Movie Name</th>

    <th>Genre</th>

    <th width="80px">Update</th>

    <th width="80px">Delet</th>

   </tr>

   </thead>

   <tbody>

   <c:forEach var="movie" items="${movies}">



    <tr>

    <td>${movie.movieId}</td>

    <td>${movie.movieName}</td>

    <td>${movie.genre}</td>

    <td><a href="/MovieTable/updateMovie/${movie.movieId}"

     class="btn btn-warning">Update</a></td>

    <td><a href="/MovieTable/deletMovie/${movie.movieId}"

     class="btn btn-warning">Delet</a></td>



    </tr>

   </c:forEach>



   </tbody>



  </table>

  </c:if>

 </main>



 <nav>

  <a href="addMovie" class="btn btn-primary">Add Movie</a>



 </nav>





 </div>

</body>

</html>