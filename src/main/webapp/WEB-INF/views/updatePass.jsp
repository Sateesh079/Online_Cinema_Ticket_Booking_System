<%@ page language="java" contentType="text/html; charset=UTF-8"

  pageEncoding="UTF-8"%>

  <%@ page isELIgnored="false" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Update Password</title>









  

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

  

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

 <a href="/logout">Logout</a>

 <a href="/movies"> Home</a>

 <a href="/myBookings">My Bookings</a>

  

</div>

<h3 style="color: green;">${msg}</h3>

 <section class="h-100 gradient-form" style="background-color: #eee;">

 <div class="container py-5 h-100">

  <div

  class="row d-flex justify-content-center align-items-center h-100">

  <div class="col-xl-10">

   <div class="card rounded-3 text-black">

   <div class="row g-0">

    <div class="col-lg-6">

    <div class="card-body p-md-5 mx-md-4">

     <form method="post" action="/updatePass">



     <div class="form-outline mb-4">

      <label class="form-label" for="pass">Enter New Password</label> <input

      type="password" name="pass" id="pass"

      class="form-control" placeholder="Password" />

     </div>

          <div class="text-center pt-1 mb-5 pb-1">

      <button

      class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"

      type="submit">Update</button>

     </div>

     </form>

     </div>

     </div></div></div></div></div></div></section>



</body>

</html>