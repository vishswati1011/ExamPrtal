<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="/CommonThing/BTCDN.jsp"%>

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/CSSFolder/dropdownCSS.css" />
</head>
<body>
	<div id="menu">
		<ul>
			<li><a href="<%=request.getContextPath()%>/WelcomeFolder/WelcomePage.jsp">ONLINE EXAM</a></li>
			<li><a href="<%=request.getContextPath()%>/AdminPanel/StudentControll/StudentRegistration.jsp">New Register</a></li>
			<li><a href="AdminPage.jsp">AdminPanel</a></li>
			<li><a href="LoginPage.jsp">StudentPanel</a></li>
			<li><a href="<%=request.getContextPath()%>/logout.jsp">Logout</a></li>
		</ul>
	</div>

</body>
</html>