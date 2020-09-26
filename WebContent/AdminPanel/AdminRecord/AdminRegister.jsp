<!DOCTYPE html>
<html>
<head>
<title>Registration Form</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSSFolder/LoginPageCSS.css" />
 <%@include file="//CommonThing/BTCDN.jsp" %>
</head>
<body>

<div class="container">
<h2><a href="<%=request.getContextPath() %>/WelcomeFolder/WelcomePage.jsp" class="text-info">Home</a></h2>
  <h3>Student Registration Form</h3>
  <form action="../../AdminRegisterController" method="GET"> 
    <div class="form-group">
      <label for="pwd">Username:</label>
      <input type="text" class="form-control" id="username" placeholder="Enter your username" name="username">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter your password" name="password">
    </div>      
    
    <input type="submit" value="Submit"/>
  </form>
</div>

</body>
</html>