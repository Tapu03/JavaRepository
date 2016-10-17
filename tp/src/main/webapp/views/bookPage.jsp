<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<%@ include file="header.jsp" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>To View Books Details</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<div class="container">
<h2 align=center><font color="red" face="Showcard Gothic">Book Details</font></h2>
<br>
ISBN : ${b.isbn}<br>
PRICE : ${b.price}<br>
PUBLISHER :${b.publisher}<br>
TITLE : ${b.title}<br>
</body>
<%@ include file="footer.jsp" %>
</html>
