<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
<style>
  body {
   text-align: center;
    background-color: #f1f1f1;
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
  }
  
  h2 {
    text-align: center;
    font-size: 2rem;
    margin-top: 20px;
    margin-bottom: 20px;
    color: #4CAF50;
    text-shadow: 1px 1px #ccc;
  }
  
  form {
    display: inline-block;
    margin-top: 20px;
  }
  
  input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
  }

  input[type="submit"]:hover {
    background-color: #45a049;
  }
   .lead-info {
      display: inline-block;
      text-align: left;
    }
</style>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead Information</title>
</head>
<body>
  <h2>Lead Information</h2>
  <div class="lead-info">

  <p>First Name: ${lead.firstName}</p>
  <p>Last Name: ${lead.lastName}</p>
  <p>Email: ${lead.email}</p>
  <p>Mobile: ${lead.mobile}</p>
  <p>Source: ${lead.source}</p>

  <form action="composeEmail" method="post">
    <input type="hidden" name="email" value="${lead.email}"/>
    <input type="submit" value="Email"/>
  </form>

  <form action="convertLead" method="post">
    <input type="hidden" name="id" value="${lead.id}"/>
    <input type="submit" value="Convert"/>
  </form>
   </div>
</body>
</html>
