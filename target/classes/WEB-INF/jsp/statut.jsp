<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ include file="/WEB-INF/jsp/includes.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Management</title>
</head>
<body>
<h1>Students Data</h1>
<form:form action="statut.do" method="POST" commandName="statut">
	<table>
		<tr>
			<td>Statu ID</td>
			<td><form:input path="idstatut" /></td>
		</tr>
		<tr>
			<td>date</td>
			<td><form:input path="datestatut" /></td>
		</tr>
		<tr>
			<td>conent text</td>
			<td><form:input path="contenuetxt" /></td>
		</tr>
		<tr>
			<td>contentfilel</td>
			<td><form:input path="contenufile" /></td>
		</tr>
		<tr>
			<td>userid</td>
			<td><form:input path="iduser" /></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" />
				<input type="submit" name="action" value="Delete" />
				<input type="submit" name="action" value="Search" />
			</td>
		</tr>
	</table>
</form:form>
<br>
<table border="1">
	<th>ID</th>
	<th>Contentfile</th>
	<th>Contenttext</th>
	<th>date</th>
	<c:forEach items="${statutList}" var="statut">
		<tr>
			<td>${statut.idstatut}</td>
			<td>${statut.contenuetxt}</td>
			<td>${statut.contenufile}</td>
			<td>${statut.datestatut}</td>
			<td>${statut.iduser}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>