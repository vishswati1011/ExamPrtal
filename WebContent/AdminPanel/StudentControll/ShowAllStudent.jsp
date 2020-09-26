<%@page import="bean.Student"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="DAO.StudentOperation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="//CommonThing/BTCDN.jsp" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSSFolder/showallsubjectCSS.css" />
</head>

<body>

<div class="topnav">
  <a class="active" href="<%=request.getContextPath() %>/WelcomeFolder/WelcomePage.jsp">Home</a>
  <a href="#about">About</a>
  <a href="#contact">Contact</a>
  <div class="search-container">
    <form>
      <input type="text" placeholder="Search.." name="search">
      <button name="submit_search" type="submit">Submit</button>
    </form>
  </div>
</div>		

<%
if(request.getParameter("submit_search")!=null)
{
	String targetname=request.getParameter("search");
%>
<div class="container">
    <h2>Searched Data</h2>
    <table class="table ">
    <thead>
      <tr>
      	<th>Id</th>
        <th>Name</th>
        <th>Address</th>
        <th>Email</th>
        <th>Contact</th>
        <th>Fees</th>
        <th>Username</th>
        <th>Password</th>
      </tr>
    </thead>
    
    <tbody>
	<%
	StudentOperation st=new StudentOperation();
	List li=st.searchByName(targetname);
	ListIterator lit=li.listIterator(); 
	while(lit.hasNext())
	{
		Student std=(Student)lit.next();
	
		%>
		<tr>
	    <td><%= (Integer)std.getS_id()%></td>
        <td><%= std.getName()%></td>
        <td><%= std.getAddress()%></td>
        <td><%= std.getUsername()%></td>
        <td><%= std.getEmail()%></td>
		<td><%= std.getContact()%></td>
		<td><%= std.getMob()%></td>	
		<td><%= std.getUsername()%></td>
		<td><%= std.getPassword()%></td>
		<td><a class="update" href="StudentUpdate.jsp?id=<%=std.getS_id()%>">Update</a></td>	
		<td><a class="delete" href="StudentDelete.jsp?id=<%=std.getS_id()%>">Delete</a></td>	
      </tr>
            
      <%
      		}
      %> 
    </tbody>
  </table>
</div>
<hr>
	<%
		} 
	%>


<!-- ---------------------------------Searched Data------------------------------>
<div class="container">
    <h2>Student Detail</h2>
    
    <table class="table ">
    
    <thead>
      <tr>
      	<th>Id</th>
        <th>Name</th>
        <th>Address</th>
        <th>Email</th>
        <th>Contact</th>
        <th>Fees</th>
        <th>Username</th>
        <th>Password</th>
        
      </tr>
    </thead>
    
    <tbody>
	<%
	StudentOperation st=new StudentOperation();
	List li=st.selectAllStudent();
	ListIterator lit=li.listIterator(); 
	while(lit.hasNext())
	{
		Student std=(Student)lit.next();
	
		%>
		<tr>
	    <td><%= (Integer)std.getS_id()%></td>
        <td><%= std.getName()%></td>
        <td><%= std.getAddress()%></td>
        <td><%= std.getEmail()%></td>
		<td><%= std.getContact()%></td>
		<td><%= std.getMob()%></td>	
		<td><%= std.getUsername()%></td>
		<td><%= std.getPassword()%></td>
		<td><a class="update" href="StudentUpdate.jsp?id=<%=std.getS_id()%>">Update</a></td>	
		<td><a class="delete" href="StudentDelete.jsp?id=<%=std.getS_id()%>">Delete</a></td> </tr>     
      <%
      		}
      %> 
    </tbody>
  </table>
</div>
</body>
</html>