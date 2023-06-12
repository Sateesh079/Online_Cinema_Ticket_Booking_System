<%@ page language="java" contentType="text/html; charset=UTF-8"

  pageEncoding="UTF-8"%>

   

  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Update Movie</title>



<style>





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

h1 {

 text-align: center;

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

<h3 class="red-text" style="color: green;">${msg}</h3>







 <div class="topnav">

	

 <a href="/MovieTable/movieList">All Movies</a>

  <a href="/allBookings">All Bookings</a>

	

<a href="/TheatreTable/List">All Theater</a>



 <a href="/TheatreTable/addTheater">Add Theater</a>

<!-- <a href="/MovieTable/movieList"> All Movies</a>

 --> <a href="/logout">Logout</a>

</div>







<form:form action="/MovieTable/updateMovie/{id}" medthod ="post" modelAttribute="movie">

  <form:input type="hidden" path="movieId" id="movieId" value="${movie.movieId}"/>





  <table>



   <tr>

   <td>Movie Name:</td>

   <td><form:input path="movieName" value="${movie.movieName}"/></td>

   </tr>

   <tr>

   <td>Genre:</td>

   <td><form:input path="genre" value="${movie.genre }" /></td>

   </tr>

   <tr>

   <td>Theater:</td>

<%-- <c:if test="${theaters.size()>0}">

 --%>



    <td>

    <form:label path="theater"></form:label>

    <form:select path="theater.theatreId" items="${theater}" itemValue="theatreId" itemLable="name"/>



   </tr>



  </table>



  <div class="text-center" style="margin-top: 20px:">

   <button type="submit" class="btn btn-primary">Submit</button>

  </div>



  </form:form>











</body>

</html>