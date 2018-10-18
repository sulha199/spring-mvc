<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=ISO-8859-1">
<title>Chapter-7 Spring MVC</title>
</head>
<body>
	<h1 style="color: green; text-align: center;">${name}</h1>
	<h3 style="color: orange; text-align: center;">${greetings}</h3>
	<table align="center" cellspacing="10">
		<tr style="color: blue; font-style: italic; font-size: 14pt">
			<td align="left">Click Here</td>
			<td align="right" bgcolor="lightgreen"><a
				href="employee/listEmployees">List Of Employees</a></td>
		</tr>
		<tr>
			<td rowspan="2" style="color: red; text-align: center;">Exception
				Handling</td>
			<td><a href="employee/testIOException"> Click here to test
					IO Exception </a></td>
		</tr>
		<tr>
			<td><a href="employee/testGenericException">Click here to
					test Generic Exception</a></td>
		</tr>
	</table>

	<h1 style="color: green; text-align: center;">Chapter 7: Spring
		MVC - internationalization</h1>

	<table align="center" border="1">
		<tr>
			<td><b style="color: brown">Language</b></td>
			<td><a href="?lang=en">English</a>|</td>
			<td><a href="?lang=fr">French</a></td>
		</tr>
	</table>
	<h2 style="color: orange; text-align: center;">
		<spring:message code="employee.first.name" text="default text" />
		: ${firstName}
	</h2>

	<h2 style="color: orange; text-align: center;">
		<spring:message code="employee.last.name" text="default text" />
		: ${lastName}
	</h2>

</body>