
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSSFolder/dropdownCSS.css" /> 
     
    </head>
  
    <%
    String name="add";
    HttpSession session1=request.getSession();
    session1.setAttribute("name", name);
    %>
    
    <body>
        <div id="menu">
            <ul><li><a href="WelcomePage.jsp">Home</a></li>
                <li><a href="AdminPage.jsp">AdminPanel</a></li>
                <li><a href="<%=request.getContextPath() %>/AdminPanel/QuestionControll/AddSubject_Topic.jsp">AddSubject</a>
                <li><a href="<%=request.getContextPath() %>/AdminPanel/QuestionControll/Topic.jsp">AddTopic</a>
                <li><a href="<%=request.getContextPath() %>/AdminPanel/QuestionControll/AddQuestionAnswer.jsp">AddQuestion</a>
                <li><a href="<%=request.getContextPath() %>/AdminPanel/StudentControll/ShowAllStudent.jsp"">ViewStudent</a></li>
                <li><a href="<%=request.getContextPath() %>/AdminPanel/SubjectControll/ShowAllSubject.jsp"">ViewSubject</a></li>
                <li><a href="#">ViewCandidateResult</a></li>
                <li><a href="<%=request.getContextPath()%>/logout.jsp">Logout</a></li>
            </ul>
        </div>
    </body>
</html>
