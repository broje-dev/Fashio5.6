<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing</title>
<style>
body {
  font-family: Arial, sans-serif;
  background-color: #f2f2f2;
}

h2 {
  text-align: center;
  color: #333;
}

form {
  margin: 0 auto;
  max-width: 400px;
  padding: 20px;
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

input[type="text"] {
  display: block;
  margin: 10px 0;
  padding: 10px;
  width: 100%;
  border-radius: 5px;
  border: 1px solid #ccc;
  box-sizing: border-box;
  font-size: 16px;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: #fff;
  border: none;
  border-radius: 5px;
  padding: 10px 20px;
  font-size: 16px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}
</style>
</head>
<body>
<h2>Billing</h2>
<form action="saveBill" method="post">
  <label for="firstName">First Name</label>
  <input type="text" id="firstName" name="firstName" value="${contact.firstName }"/>

  <label for="lastName">Last Name</label>
  <input type="text" id="lastName" name="lastName" value="${contact.lastName }"/>

  <label for="email">Email</label>
  <input type="text" id="email" name="email" value="${contact.email }"/>

  <label for="mobile">Mobile</label>
  <input type="text" id="mobile" name="mobile" value="${contact.mobile }"/>

  <label for="product">Product Name</label>
  <input type="text" id="product" name="product"/>

  <label for="quantity">Quantity</label>
  <input type="text" id="quantity" name="quantity"/>

  <label for="amount">Amount</label>
  <input type="text" id="amount" name="amount"/>

  <input type="submit" value="Generate"/>
</form>
<div style="text-align: center; margin-top: 50px;">
  ${msg}
</div>
</body>
</html>
