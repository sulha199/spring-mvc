<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=ISO-8859-1">
<title>Employee List</title>
</head>
<body>
	<div align="center">
		<a href="${pageContext.request.
contextPath}/logoutPage"> Logout
		</a>
		<h1 style="background-color: lightgreen; color: darkgreen">Employee
			List</h1>
		<table align="center" width="80%" cellspacing="0" cellpadding="5">
			<tr>
				<td align="right">
					<table cellspacing="0" cellpadding="6" border="0" width="100%">
						<tr bgcolor="lightblue">
							<td align="left"><a
								href="${pageContext.request.contextPath}/employee/addemployee"
								style="background-color: lightblue;"> Add Employee </a></td>
							<td align="right"><a
								href="${pageContext.request.contextPath}/logout">Logout</a></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr bgcolor="grey" style="color: white">
				<th>No</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Job Title</th>
				<th>Department</th>
				<th>Salary</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="employee" items="${employeesList}" varStatus="status">
				<tr bgcolor="lightyellow">
					<td><b>${status.index + 1}</b></td>
					<td>${employee.firstName}</td>
					<td>${employee.lastName}</td>
					<td>${employee.jobTitle}</td>
					<td>${employee.department}</td>
					<td>${employee.salary}</td>
					<td><a
						href="${pageContext.request.
contextPath}/employee/delete/${employee.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>