<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
        <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>List of Leads</title>
  <style>
    table {
      border-collapse: collapse;
      width: 100%;
      font-family: Arial, Helvetica, sans-serif;
      color: #444;
      margin-top: 20px;
    }
    th, td {
      text-align: left;
      padding: 8px;
      border-bottom: 1px solid #ddd;
    }
    th {
      background-color: #4CAF50;
      color: white;
    }
    tr:hover {
      background-color: #f5f5f5;
    }
    a {
      text-decoration: none;
      color: #2196F3;
    }
    h2 {
      font-family: Arial, Helvetica, sans-serif;
      color: #444;
      text-align: center;
      margin-top: 20px;
    }
  </style>
</head>
<body>
  <h2>All Leads</h2>
  <table>
    <thead>
      <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Mobile</th>
        <th>Source</th>
      </tr>
    </thead>
    <tbody>
      <c:forEach var="lead" items="${leads}">
        <tr>
          <td><a href="listInfo?id=${lead.id}">${lead.firstName}</a></td>
          <td>${lead.lastName}</td>
          <td>${lead.email}</td>
          <td>${lead.mobile}</td>
          <td>${lead.source}</td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</body>
</html>