
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Question Insert Form</title>
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
		<h2>Question Insert Form</h2>
		<form action="../../AddQuestion" method="GET">
			<div class="form-group">
				<label for="name">Question:</label> <input type="text"
					class="form-control" id="ques" placeholder="Enter Question"
					name="ques">
			</div>
			<div class="form-group row">
				<div class="col-xs-2">
					<label for="ex1">Option-A</label> <input class="form-control"
						id="ex1" type="text" name="optionA">
				</div>
				<div class="col-xs-3">
					<label for="ex2">Option-B</label> <input class="form-control"
						id="ex2" type="text" name="optionB">
				</div>
				<div class="col-xs-4">
					<label for="ex3">Option-C</label> <input class="form-control"
						id="ex3" type="text" name="optionC">
				</div>
				<div class="col-xs-4">
					<label for="ex3">Option-D</label> <input class="form-control"
						id="ex3" type="text" name="optionD">
				</div>
				<div class="col-xs-4">
					<label for="ex3">Topic</label> <input class="form-control"
						id="ex3" type="text" name="topic">
				</div>
			</div>

			<div class="form-group">
				<label for="pwd">Answer:</label> <input type="text"
					class="form-control" id="sub_total_ques" placeholder="Submited By"
					name="answer" />
			</div>
			<input type="submit" value="Submit" />
		</form>
	</div>

</body>
</html>