<%@ page language="java" contentType="text/html; charset=UTF-8"

  pageEncoding="UTF-8"%>

  <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %> 

   

   <%@page isELIgnored="false" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Details</title>

<style>



	

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

<div class="topnav">

<a href="/">Login</a>

</div>

<h2>This is Your Customer ID ${cust}</h2>

<h2>This Is Password :${pass}</h2>





</body>

</html>