<%@page import="bean.Student"%>
<%@page import="DAO.StudentOperation"%>
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
	StudentOperation st=new StudentOperation();
	Student std=st.selectStudent(sid);
	if(std!=null)
	{
	 %>
<div class="container">
  <h2>Student Info Update Form</h2>
  <form action="../../FinalUpdate" method="GET">
    <input type="hidden"  value=<%=std.getS_id() %>   name="id">
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" value=<%=std.getName() %> id="name" placeholder="Enter your name" name="name">
    </div>
    <div class="form-group">
      <label for="pwd">Address:</label>
      <input type="text" class="form-control" value=<%=std.getAddress() %> id="add" placeholder="Enter your address" name="address">
    </div>
        <div class="form-group">
      <label for="pwd">contact:</label>
      <input type="text" class="form-control" value=<%=std.getContact() %> id="contact" placeholder="Enter your contact" name="contact">
    </div>
        <div class="form-group">
      <label for="pwd">Fees:</label>
      <input type="text" class="form-control"  value=<%=std.getMob() %> id="fees" placeholder="Enter your fees" name="fees">
    </div>
        <div class="form-group">
      <label for="pwd">Admission_date:</label>
      <input type="text" class="form-control"  value=<%=std.getClasses() %> id="admission_date" placeholder="Enter your admission_date" name="admissiondate">
    </div>
    <div class="form-group">
      <label for="pwd">Email:</label>
      <input type="text" class="form-control" value=<%=std.getEmail() %>   placeholder="Enter your email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Username:</label>
      <input type="text" class="form-control" value=<%=std.getUsername() %> id="username" placeholder="Enter your username" name="username">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" value=<%=std.getPassword() %> id="password" placeholder="Enter your password" name="password">
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