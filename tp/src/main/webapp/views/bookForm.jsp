<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>

<%@ include file="header.jsp" %>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<br><br><br><br><br><br><br><br><br><br><br>
<form:form method="post" action="insertBook" commandName="bookForm">
<table>
<tr>
<td>
<form:label path="isbn"></form:label></td>
<td><form:hidden path="isbn"/></td>
</tr>
<tr>
<td><form:label path="title">TITLE</form:label></td>
<td><form:input path="title"></form:input></td>
<form:errors path="title"></form:errors>       
</tr>
<tr>
<td><form:label path="publisher">PUBLISHER</form:label>  </td>
<td><form:input path="publisher"></form:input>
<form:errors path="publisher"></form:errors>
</tr>


<tr>
<td><form:label path="price">PRICE</form:label></td>
<td><form:input path="price"></form:input></td>
</tr>
<tr>
<td><form:label path="author">AUTHOR</form:label></td>
<td><form:input path="author"></form:input></td>
</tr>
<tr>
<td><form:label path="category">CATEGORY</form:label></td>
<td>
<form:radiobutton path="category.cid" value="101" checked="checked"/>Comedy
<form:radiobutton path="category.cid" value="102"/>General
</td>
</tr>
<tr>
<td colspan=2s>
<input type="submit" value="submit">
</td>
</tr>
</table>
</form:form>
<%@ include file="footer.jsp" %>
</body>
</html>