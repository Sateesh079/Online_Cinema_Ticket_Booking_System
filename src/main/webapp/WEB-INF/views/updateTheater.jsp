<%@ page language="java" contentType="text/html; charset=UTF-8"

 pageEncoding="UTF-8"%>

<%@ taglib prefix="sp" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>update Theater</title>



<style>



.button

{

 width: 150px;

 text-align: center;

 margin:0 auto;

  text-align: center;ß



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

<h3 class="red-text" style="color: green;">${msg}</h3>



 <div class="topnav">

<a href="/TheatreTable/List">All Theater</a>

  <a href="/allBookings">All Bookings</a>



 <a href="/TheatreTable/addTheater">Add Theater</a>

<!-- <a href="/MovieTable/movieList"> All Movies</a>

 --> <a href="/logout">Logout</a>

</div>

 <main>

	

 <!-- <form action="updateTheater" modelAttribute="th" method="post">

 </form> -->

 <sp:form action="/TheatreTable/updateTheater/{id}" method="post" modelAttribute="th">

  <sp:input type="hidden" path="theatreId" id="theatreId" value="${theater.theatreId}"/>



  <table width="500px" style="margin: auto">

<%-- <tr>

   <td>Theater Id</td>

   <td>:<sp:input path="theatreId" value="${theater.theatreId}" /></td> 

  </tr> --%>

  <tr>

   <td>Theater Name</td>

   <td>:<sp:input path="thatreName" value="${theater.thatreName}" /></td>

  </tr>

  <tr>

   <td>Theater Capacity</td>

   <td>:<sp:input path="theaterCapacity" value="${theater.theaterCapacity}" /></td>

  </tr>

  <tr>

   <td>City</td>

   <td>:<sp:input path="city" value="${theater.city}" /></td>

   

  </tr> 



  </table>

  <div class="text-center" style="margin-top: 20px:">

   <button type="submit" class="btn btn-primary">Submit</button>

  </div>



  <%-- <table>

<tr><td>Theater Name</td><td>:<sp:input path=""/></td></tr>

<tr><td>Capacity</td><td>:<sp:input path="theaterCapacity"/></td></tr>

<tr><td>City</td><td>:<sp:input path="city"/></td></tr>

</table> --%>



  

   



  

 </sp:form>

 </main>



</body>

</html>