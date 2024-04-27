<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty sessionScope.user}">
		<h3>
			Hii,
			<c:out value="${sessionScope.user.firstName}"></c:out>
			<a href="<c:url value="/ctl/User"/>">Add User</a> <a
				href="<c:url value="/ctl/User/search"/>">User List</a> <a
				href="<c:url value="/Login?operation=logout"/>">Logout</a>
		</h3>
	</c:if>
	<c:if test="${empty sessionScope.user}">
		<h3>Hii, Guest</h3>
	</c:if>
	<hr>
</body>
</html>