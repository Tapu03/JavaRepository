<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url value="/admin/book/editBook" var="url"></c:url> 
	<form:form method="post" action="${url}" commandName="editBookObj">
		<table>
		<tr>
			<td><form:label path="isbn">ISBN</form:label></td>
			<td><form:input path="isbn" disabled="true"/>
			<form:hidden path="isbn" /></td>
        </tr>
        <tr>
        <td><form:label path="title">TITLE</form:label>  </td>
        <td><form:input path="title"></form:input></td>
	    </tr>
	     <tr>
        <td><form:label path="publisher">PUBLISHER</form:label>  </td>
		<td><form:input path="publisher"></form:input>

	    </tr>
	     <tr>
        <td><form:label path="price">PRICE</form:label>  </td>
        <td><form:input path="price"></form:input></td>
	    </tr>
	     <tr>
	    <td><form:label path="author">AUTHOR</form:label></td>
		<td><form:input path="author"></form:input></td>
</tr>

	    </tr>
	    
	    <tr>
	    <td><form:label path="category">CATEGORY</form:label></td>
	    <td>
	    <form:radiobutton path="category.cid" value="101" checked="checked"/>Comedy
	     <form:radiobutton path="category.cid" value="102"/>General	
	      
	    </td>
	    </tr>
	    <tr>
	    <td colspan="2"><input type="submit" value="EditBook"></td>
	    </tr>
		</table>
	</form:form>

</body>
</html>
