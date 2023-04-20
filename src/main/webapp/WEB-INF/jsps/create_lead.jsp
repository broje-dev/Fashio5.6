<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<style>
 h2 {
    text-align: center;
    font-size: 2rem;
    margin-top: 20px;
    margin-bottom: 20px;
    color: #4CAF50;
    text-shadow: 1px 1px #ccc;
  }
 body {
  
    background-color: #f1f1f1;
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
  }

 .myDiv {
    background-color: #f1f1f1;
    padding: 20px;
    border-radius: 10px;
    width: 400px;
    margin: auto;
  }

  input[type="text"], select {
    padding: 10px;
    border-radius: 5px;
    border: none;
    margin-bottom: 10px;
    width: 100%;
  }

  input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
  }

  input[type="submit"]:hover {
    background-color: #45a049;
  }


</style>
<meta charset="ISO-8859-1">
<title>create</title>
</head>
<body>
<h2 align="center">New Lead</h2>
<form action="saveLead" method="post">

<div class="myDiv">
  <label for="firstName">First Name</label>
  <input type="text" name="firstName" id="firstName"/>
  
  <label for="lastName">Last Name</label>
  <input type="text" name="lastName" id="lastName"/>
  
  <label for="email">Email</label>
  <input type="text" name="email" id="email"/>
  
  <label for="mobile">Mobile</label>
  <input type="text" name="mobile" id="mobile"/>
  
  <label for="source">Source:</label>
  <select name="source" id="source">
    <option value="news paper">News paper</option>
    <option value="online">Online</option>
    <option value="webinar">Webinar</option>
    <option value="radio">Radio</option>
  </select>
  
  <input type="submit" value="Save"/>
</div>
</form>
</body>
</html>