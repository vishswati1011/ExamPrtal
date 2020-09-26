
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Subject Insert Form</title>
<meta charset="utf-8">
<met    a name="viewport" content="width=device-width, initial-scale=1">
<%@include file="//CommonThing/BTCDN.jsp"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSSFolder/BackgoundCSS.css" />

</head>
<body>
<div id="register-link" align="right" class="text-right">
     <a href="<%=request.getContextPath() %>/WelcomeFolder/WelcomePage.jsp" class="text-info">Home</a>
   </div>
	<div class="container">
		<h2>Subject Insert Form</h2>
		<form action="../../AddSubject" method="GET">
			<div class="form-group">
				<label for="name">Subject Name:</label> <input type="text"
					class="form-control" id="sub_name" placeholder="Enter subject name"
					name="sub_name">
			</div>
			
			<input type="submit" value="Submit" />
		</form>
	</div>

</body>
</html>