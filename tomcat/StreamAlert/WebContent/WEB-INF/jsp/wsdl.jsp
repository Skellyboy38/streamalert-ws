<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Parse WSDL</title>
</head>
<%@ page import="wsdl.Element" %>
<body>
	<h1>WSDL Content:</h1>
	<hr>
	<br>
	<h5>Elements Name: <%= (String)request.getAttribute("elementName") %></h5>
	<h5>Elements Value: <%= (String)request.getAttribute("elementValue") %></h5>

</body>
</html>