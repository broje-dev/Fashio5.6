<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
  background-color: #f2f2f2;
}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-weight: bold;
  font-size: 18px;
}

li a:hover {
  background-color: #4CAF50;
}

.logo {
  height: 50px;
  margin-right: 10px;
}

.alllist {
  background-image: url('https://cdn4.iconfinder.com/data/icons/fintech-essentials-1/48/fintech_leads-512.png');
  background-repeat: no-repeat;
  background-position: left center;
  padding-left: 50px;
}

.allcontact {
  background-image: url('https://cdn3.iconfinder.com/data/icons/fintech-essentials-2/48/fintech_contacts-512.png');
  background-repeat: no-repeat;
  background-position: left center;
  padding-left: 50px;
}

.allbill {
  background-image: url('https://cdn2.iconfinder.com/data/icons/finance-188/64/bill-document-report-finance-business-512.png');
  background-repeat: no-repeat;
  background-position: left center;
  padding-left: 50px;
}

.create {
  background-image: url('https://cdn3.iconfinder.com/data/icons/fintech-essentials-2/48/fintech_add-512.png');
  background-repeat: no-repeat;
  background-position: left center;
  padding-left: 50px;
}

</style>
<title>My Website</title>
</head>
<body>

<ul>
  <li><a class="create" href="/createLead">New Lead</a></li>
  <li><a class="alllist" href="/listLeads">List Leads</a></li>
  <li><a class="allcontact" href="/listContacts">List Contacts</a></li>
  <li><a class="allbill" href="/allBill">All Bills</a></li>
</ul>

</body>
</html>
