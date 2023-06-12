<%@ page language="java" contentType="text/html; charset=UTF-8"

 pageEncoding="UTF-8"%>

<%@ page isELIgnored="false"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Login Page</title>

<link rel="stylesheet"

 href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>

/* h1 {

 text-align: centre;

 margin: :20px;

 colour: red

}



div {

 min-width: 150px;

}



main {

 margin-top: 50px;

}



body {

 background-image: url("");

 background-color: #cccccc;

}

nav {

 min-width: 150px;

}



main {

 margin-top: 50px;

}

*/

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

	

	

 <div class="topnav">

<a href="/movies">Movies</a>



</div>



<!-- 





 <section class="h-100 gradient-form" style="background-color: #eee;">

 <div class="container py-5 h-100">

  <div

  class="row d-flex justify-content-center align-items-center h-100">

  <div class="col-xl-10">

   <div class="card rounded-3 text-black">

   <div class="row g-0">

    <div class="col-lg-6">

    <div class="card-body p-md-5 mx-md-4">



     <div class="text-center">



     <h4 class="mt-1 mb-5 pb-1">Welcome to Online Movie

      Booking</h4>

     </div>



     <form method="post" action="/loginPage">

     <p>Please login to your account</p>



     <div class="form-outline mb-4">

      <label class="form-label" for="userID">Username</label> <input

      type="text" name="userID" id="userID" class="form-control"

      placeholder="Username" />

     </div>



     <div class="form-outline mb-4">

      <label class="form-label" for="password">Password</label> <input

      type="password" name="password" id="password"

      class="form-control" placeholder="Password" />

     </div>



     <div class="text-center pt-1 mb-5 pb-1">

      <button

      class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-3"

      type="submit">Log in</button>

     </div>



     <div

      class="d-flex align-items-center justify-content-center pb-4">

      <a href="/register" class="mb-0 me-2">Don't have an

      account?</a>

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

</div>

 -->

<section class="vh-100" style="background-color: #9A616D;">

 <div class="container py-5 h-100">

  <div class="row d-flex justify-content-center align-items-center h-100">

   <div class="col col-xl-10">

    <div class="card" style="border-radius: 1rem;">

     <div class="row g-0">

      <div class="col-md-6 col-lg-5 d-none d-md-block">

       <img src="https://pbs.twimg.com/media/C69o50lU8AAgguC.jpg"

        alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />

      </div>

      <div class="col-md-6 col-lg-7 d-flex align-items-center">

       <div class="card-body p-4 p-lg-5 text-black">



<form method="post" action="/loginPage">



         <div class="d-flex align-items-center mb-3 pb-1">

          <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>

          <span class="h1 fw-bold mb-0">Welcome to Online Cinema Booking</span>

         </div>



         <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account</h5>

         <h4 class="red-text" style="color: red;">${msg}</h4>

          



         <div class="form-outline mb-4">

          <input type="text" name="userID" id="userID" class="form-control form-control-lg" />

          <label class="form-label" for="userID">Username</label>

         </div>



         <div class="form-outline mb-4">

          <input type="password" name="password" id="password" class="form-control form-control-lg" />

          <label class="form-label" for="password">Password</label>

         </div>



         <div class="pt-1 mb-4">

          <button class="btn btn-dark btn-lg btn-block" type="submit">Login</button>

         </div>



         <p class="mb-5 pb-lg-2" style="color: #393f81;"> <a href="/register" class="mb-0 me-2">Don't have an account?</a>

       </p>

         

        </form>



       </div>

      </div>

     </div>

    </div>

   </div>

  </div>

 </div>

</section>







</body>

</html>