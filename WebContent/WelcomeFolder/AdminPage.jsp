<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <%@include file="/CommonThing/BTCDN.jsp" %>
 
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSSFolder/LoginPageCSS.css" />
</head>
<body>

 <div id="register-link" align="right" class="text-right">
     <h2><a href="WelcomePage.jsp" class="text-info">Home</a></h2>
   </div>
    <div id="login">
        <h3 class="text-center text-white pt-5">Admin Login form</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="<%=request.getContextPath() %>/AdminLogin" method="get">
                            <h3 class="text-center text-info">Login</h3>
                            <div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                                <input type="text" name="username" id="username" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="password" name="password" id="password" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                <input type="submit" name="submit" class="btn btn-info btn-md" value="submit">
                            </div>
                            <br>
                            <br>
                            <br>
                           <div id="register-link" class="text-right" align="right">
                                <a href="<%=request.getContextPath() %>/AdminPanel/AdminRecord/AdminRegister.jsp"  class="text-info">New Admin Register here</a>
                            </div>
                        </form>
                         
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>