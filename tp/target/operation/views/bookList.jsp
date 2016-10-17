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
<h2 align=center><font color="red" face="Showcard Gothic">List Of Books Available</font></h2>
<br>


<table border=1 align=center>
<tr>
		<th>AUTHOR</th>
		<th>ISBN</th>
		<th>PRICE</th>
		<th>PUBLISHER</th>
		<th>TITLE</th>
		<th>Category</th>
		<th>INFORMATION</th>
		<th>DELETE</th>
		<th>EDIT</th>	
	</tr>	
<c:forEach items="${books}" var="b">
		<tr>
		<td> ${b.isbn}</a></td>
		<td> ${b.author}</td>
		<td> ${b.price}</td>
		<td> ${b.publisher}</td>
		<td> ${b.title}</td>
		<td>${b.category.categoryName}</td>
		
		
	<td><a href="getBooksByIsbn/${b.isbn}"><span class="glyphicon glyphicon-info-sign"></span></a></td>
	<td><a href="admin/delete/${b.isbn }"><span class="glyphicon glyphicon-trash"></span></a></td>
	<td><a href="admin/book/editBook/${b.isbn }"><span class="glyphicon glyphicon-edit"></span></a></td>		
	</tr>
	
</c:forEach>	

</table>
</div>
</body>
<%@ include file="footer.jsp" %>
</html>