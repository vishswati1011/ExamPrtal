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
		<h2>Topic Insert Form</h2>
		<form action="../../AddTopic" method="GET">
			<div class="form-group">
				<label for="name">Subject Name:</label> <input type="text"
					class="form-control" id="sub_name" placeholder="Enter subject name"
					name="sub_name">
			</div>
			<div class="form-group row">
				<div class="col-xs-2">
					<label for="ex1">Topic-1</label> <input class="form-control"
						id="ex1" type="text" name="option1">
				</div>
				<div class="col-xs-3">
					<label for="ex2">Topic-2</label> <input class="form-control"
						id="ex2" type="text" name="option2">
				</div>
				<div class="col-xs-4">
					<label for="ex3">Topic-3</label> <input class="form-control"
						id="ex3" type="text" name="option3">
				</div>
			</div>

			<div class="form-group">
				<label for="pwd">Posted By:</label> <input type="text"
					class="form-control" id="sub_total_ques" placeholder="Submited By"
					name="submited_by" />
			</div>
			<input type="submit" value="Submit" />
		</form>
	</div>
</body>
</html>