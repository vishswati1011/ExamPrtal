 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Registration Form</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <%@include file="//CommonThing/BTCDN.jsp" %>
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSSFolder/BackgoundCSS.css" />
 
</head>
<body>

<div class="container">
<h2><a href="WelcomePage.jsp" class="text-info">Home</a></h2>
  <h2>Student Registration Form</h2>
  <form action="../../RegisterController" method="GET">
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter your name" name="name">
    </div>
    <div class="form-group">
      <label for="pwd">Address:</label>
      <input type="text" class="form-control" id="add" placeholder="Enter your address" name="address">
    </div>
        <div class="form-group">
      <label for="pwd">contact:</label>
      <input type="text" class="form-control" id="contact" placeholder="Enter your contact" name="contact">
    </div>
        <div class="form-group">
      <label for="pwd">Mobile:</label>
      <input type="text" class="form-control" id="fees" placeholder="Enter your fees" name="mob">
    </div>
        <div class="form-group">
      <label for="pwd">Class:</label>
      <input type="text" class="form-control" id="admission_date" placeholder="Enter your admission_date" name="class">
    </div>
    <div class="form-group">
      <label for="pwd">Email:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter your email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Username:</label>
      <input type="text" class="form-control" id="username" placeholder="Enter your username" name="username">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter your password" name="password">
    </div>      
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <input type="submit" value="Submit"/>
  </form>
</div>

</body>
</html>