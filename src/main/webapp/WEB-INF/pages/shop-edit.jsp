<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>s
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="https://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Edit Shop Page</title>
</head>
<body>
<h1>Edit Shop Page</h1>
<form:form method="POST" commandName="shop" action="${pageContext.request.contextPath}/shop/edit/${shop.id}/html">
<table>
<tbody>
<tr>
<td>Shop Name:</td>
<td><form:input path="name" /></td>
<td><form:errors path="name" cssStyle="color: red;" /></td>
</tr>
<tr>
<td>Employees Number:</td>
<td><form:input path="emplNumber" /></td>
<td><form:errors path="emplNumber" cssStyle="color: red;" /></td>
</tr>
<tr>
<td><input type="submit" value="Edit" /></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>
</form:form>
<a href="${pageContext.request.contextPath}/">Home Page</a>
</body>
</html>