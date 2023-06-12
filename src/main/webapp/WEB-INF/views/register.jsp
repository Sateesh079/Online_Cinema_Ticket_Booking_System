<%@ page language="java" contentType="text/html; charset=UTF-8"

 pageEncoding="UTF-8"%>

<%@ taglib prefix="sp" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>



<html>



<head>



<meta charset="UTF-8">



<title>User Details Form</title>



<!-- Bootstrap CSS -->



<link rel="stylesheet"

 href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">



<style>



/* Apply a box-sizing border-box to all elements */

* {

 box-sizing: border-box;

}



/* Style the form container */

form {

 background-color: #f2f2f2;

 padding: 10px;

 border-radius: 10px;

 width: 600px;

 margin: 0 auto;

}



/* Style the form headings */

h1 {

 text-align: center;

 font-size: 24px;

 margin-top: 0;

}



h2 {

 text-align: center;

 font-size: 50px;

 margin-top: 10;

}



/* Style the form labels */

label {

 display: block;

 margin-bottom: 8px;

}



/* Style the form input fields */

input[type="text"], input[type="email"], textarea {

 width: 100%;

 padding: 12px;

 border: 1px solid #ccc;

 border-radius: 4px;

 resize: vertical;

}



/* Style the form submit button */

input[type="submit"] {

 background-color: #4CAF50;

 color: white;

 padding: 12px 20px;

 border: none;

 border-radius: 4px;

 cursor: pointer;

 width: 100%;

 margin-top: 16px;

}



/* Style the form submit button on hover */

input[type="submit"]:hover {

 background-color: #45a049;

}

</style>



</head>



<div>





 <h2>Register For Movie Booking</h2>





</div>





<body>





 <section class="h-100 gradient-form" style="background-color: #eee;">

 <div class="container py-5 h-100">

  <div

  class="row d-flex justify-content-center align-items-center h-100">

  <div class="col-xl-10">

   <div class="card rounded-3 text-black">

   <div class="row g-0">

    <div class="col-lg-6">

    <div class="card-body p-md-5 mx-md-4">



     <form method="post" action="loginInsert"

     modelAttribute="customer">



     <div class="input-group mb-3">

      <span class="input-group-text" id="inputGroup-sizing-default">Name</span>

      <input type="text" name="name" id="name"

      class="form-control" aria-label="Sizing example input"

      aria-describedby="inputGroup-sizing-default" maxlength="20" required="required"/>

     </div>



     <div class="input-group mb-3">

      <span class="input-group-text" id="inputGroup-sizing-default">Date

      of Birth</span>

      <input type="DATE" path="dob" id="dob"

      class="form-control" aria-label="Sizing example input"

      aria-describedby="inputGroup-sizing-default" required="required" />

     </div>



<!-- Gender: Male<radiobutton name="gender" value="Male" required="required" />

Female<radiobutton name="gender" value="Female" /> 

Other<radiobutton name="gender" value="other" /> -->

<p>Gender</p>

<input type="radio" name="gender" value="Male">Male

  <input type="radio" name="gender" value="Female">Female

     <br>





     <div class="input-group mb-3">

      <span class="input-group-text" id="inputGroup-sizing-default">Present

      Address</span>

      <input type="text" name="presentAddress"

      id="presentAddress" class="form-control"

      aria-label="Sizing example input"

      aria-describedby="inputGroup-sizing-default" required="required" />

     </div>



     <div class="input-group mb-3">

      <span class="input-group-text" id="inputGroup-sizing-default">Mobile</span>

      <input type="number" name="phoneNumber" id="phoneNumber"

      class="form-control" aria-label="Sizing example input"

      aria-describedby="inputGroup-sizing-default" maxlength="10" required="required" />

     </div>

     <div class="input-group mb-3">

      <span class="input-group-text" id="inputGroup-sizing-default">Email</span>

      <input type="email" name="email" id="email"

      class="form-control" aria-label="Sizing example input"

      aria-describedby="inputGroup-sizing-default" required="required" />

     </div>



     <div class="form-outline mb-4">

      <label class="form-label" for="password">Password</label> 

      <input

      type="password" name="password" id="password"

      class="form-control" placeholder="Password" />

     </div>











     <%-- Name<sp:input path="name" id="name" />

Date of Birth<sp:input path="dob" id="dob" /><br>

 --%>

     <%-- 

Present Address<sp:input path="presentAddress" /><br>

Mobile Number<sp:input path="phoneNumber" /><br>

Email<sp:input path="email" /><br> --%>



     <input type="submit" value="Submit" />



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

