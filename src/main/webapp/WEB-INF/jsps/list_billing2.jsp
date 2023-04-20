<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
        <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>All Bill</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
        }
          h2 {
      font-family: Arial, Helvetica, sans-serif;
      color: #444;
      text-align: center;
      margin-top: 20px;
    }
        table {
            border-collapse: collapse;
            width: 100%;
            max-width: 800px;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        th, td {
            text-align: left;
            padding: 12px;
        }
        th {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
            text-transform: uppercase;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <h2>All Bill</h2>
    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Product</th>
            <th>Quantity</th>
            <th>Amount</th>
        </tr>
        <c:forEach var="bil" items="${bill}">
            <tr>
                <td>${bil.firstName}</td>
                <td>${bil.lastName}</td>
                <td>${bil.email}</td>
                <td>${bil.mobile}</td>
                <td>${bil.product}</td>
                <td>${bil.quantity}</td>
                <td>${bil.amount}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
