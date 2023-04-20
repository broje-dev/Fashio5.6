<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
<style>
  body {
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
    margin: 0 auto;
    width: 50%;
    border: 1px solid #ccc;
    padding: 20px;
    border-radius: 10px;
  }
  
  input[type="text"],
  textarea {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
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
</style>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Compose Email</title>
</head>
<body>
  <h2>Compose Email</h2>

  ${msg}

  <form action="sendEmail" method="post">
    <pre>
      To <input type="text" name="to" value="${email}"/>
      Subject <input type="text" name="subject"/>

      <textarea name="msg" rows="10" cols="50"></textarea>

      <input type="submit" value="Send"/>
    </pre>
  </form>
</body>
</html>
