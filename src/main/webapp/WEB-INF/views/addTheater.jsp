<%@ page language="java" contentType="text/html; charset=UTF-8"

 pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Add Theater</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">



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

 <a href="/TheatreTable/List" >All Theater</a>

 

  <a href="/MovieTable/addMovie">Add Movie</a>

 <a href="/MovieTable/movieList" > All Movies</a>

   <a href="/allBookings">All Bookings</a>

  

  <a href="/logout">Logout</a>

  

</div>



 <div class="container">

	

 <main>



  <%-- <form action="saveTheater" modelAttribute="theater"> --%>

 <%-- <table>

   <tr>

   <td>Theater Name</td>

   <td>:<form:input path="thatreName" /></td>

   </tr>

   <tr>

   <td>Capacity</td>

   <td>:<form:input path="theaterCapacity" /></td>

   </tr>

   <tr>

   <td>City</td>

   <td>:<form:input path="city" /></td>

   </tr>

  </table>



  <div class="text-center" style="margin-top: 20px:">

   <button type="submit" class="btn btn-primary">Submit</button>

  </div> --%>

   

   

   

         

   

   

 <section class="h-100 gradient-form" style="background-color: #eee;">

 <div class="container py-5 h-100">

  <div

  class="row d-flex justify-content-center align-items-center h-100">

  <div class="col-xl-10">

   <div class="card rounded-3 text-black">

   <div class="row g-0">

    

    <div class="col-lg-6">

    <div class="card-body p-md-5 mx-md-4">



     <form action="saveTheater" modelAttribute="theater">







     <!-- <tr>

   <td>Movie Name:</td>

   <td><input name="movieName" /></td>

   </tr>

   <tr> -->



     <div class="form-outline mb-4">

      <label class="form-label" for="thatreName">Theater Name</label>

      <input type="text" name="thatreName" id="thatreName"

      class="form-control" placeholder="Theater Name" />

     </div>

     <!-- <td>Genre:</td>

   <td><input name="genre" /></td>

   </tr>

   <tr> -->

     <div class="form-outline mb-4">

      <label class="form-label" for="theaterCapacity">Theater Capacity</label> <input

      type="text" name="theaterCapacity" id="theaterCapacity" class="form-control"

      placeholder="Theater Name" />

     </div>



     <!-- <td>Theater:</td> -->

     <%-- <c:if test="${theaters.size()>0}">

 --%>



     <!-- <td> -->

     <div class="form-outline mb-4">

       <label class="form-label" for="city">Theater Location</label> <input

      type="text" name="city" id="city" class="form-control"

      placeholder="City" />

     

      <%--    

 --%>

     </div>

     <div class="text-center pt-1 mb-5 pb-1">

      <button

      class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"

      type="submit">Submit</button>

     </div>

     </form>













    </div>

    </div>

   </div>

   </div>

  </div>

  </div>

 </div>

 </section>

  



 </main>







 </div>

</body>

</html>