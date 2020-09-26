
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSSFolder/dropdownCSS.css" /> 
     
    </head>
    <body>
        <div id="menu">
            <ul> <li><a href="WelcomePage.jsp">Home</a></li>
            	 <li><a href="LoginPage.jsp">StudentPanel</a></li>  
                 <li><a href="<%=request.getContextPath() %>/AdminPanel/Test/display.jsp">Subject-To-Test</a>
                <li><a href="#">View-Result</a></li>
                <li><a href="<%=request.getContextPath()%>/logout.jsp">Logout</a></li>
            </ul>
        </div>
    </body>
</html>
