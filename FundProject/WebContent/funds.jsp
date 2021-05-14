<%@page import="com.Fund"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Funds Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/funds.js"></script>
</head>
<body>
<div class="container"><div class="row"><div class="col-6">
<h1>Funds Management</h1>
<form id="formFund" name="formFund">
 Fund code:
 <input id="fundCode" name="fundCode" type="text"
 class="form-control form-control-sm">
 <br> Fund name:
 <input id="fundName" name="fundName" type="text"
 class="form-control form-control-sm">
 <br> Fund price:
 <input id="fundAmount" name="fundAmount" type="text"
 class="form-control form-control-sm">
 <br> Fund description:
 <input id="fundDesc" name="fundDesc" type="text"
 class="form-control form-control-sm">
 <br>
 <input id="btnSave" name="btnSave" type="button" value="Save"
 class="btn btn-primary">
 <input type="hidden" id="hidFundIDSave"
 name="hidFundIDSave" value="">
</form>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<br>
<div id="divFundsGrid">
 <%
 Fund fundObj = new Fund();
 out.print(fundObj.readFunds());
 %>
</div>
</div> </div> </div>
</body>
</html>