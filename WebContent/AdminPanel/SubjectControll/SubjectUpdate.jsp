<%@page import="bean.Subjects"%>
<%@page import="DAO.SubjectOperation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Update</title>
<%@include file="//CommonThing/BTCDN.jsp" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSSFolder/BackgoundCSS.css" />

</head>
<body>
	<%if(request.getParameter("id")!=null){
	int sid=Integer.parseInt(request.getParameter("id"));
	SubjectOperation st=new SubjectOperation();
	Subjects std=st.selectSubject(sid);
	if(std!=null)
	{
	 %>
<div class="container">
  <h2>Student Info Update Form</h2>
  <form action="../../subjectUpdate" method="GET">
    <input type="hidden"  value=<%=std.getSid() %>   name="id">
    <div class="form-group">
      <label for="name">Subject Name:</label>
      <input type="text" class="form-control" value=<%=std.getSname() %> id="sub_name" placeholder="Enter your subject" name="sub_name">
    </div>
    <input type="submit" value="Submit"/>
    <%}
	}
	else{
	out.println("Select any record ");
	}
	%>
  </form>
</div>
</body>
</html>