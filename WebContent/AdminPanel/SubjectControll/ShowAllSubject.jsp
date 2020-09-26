<%@page import="bean.Subjects"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="DAO.SubjectOperation"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>All Subject------</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@include file="//CommonThing/BTCDN.jsp" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSSFolder/showallsubjectCSS.css" />  
</head>
<body>

<div class="topnav">
  <a class="active" href="#home">Home</a>
  <a href="#about">About</a>
  <a href="#contact">Contact</a>
  <div class="search-container">
    <form >
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
      	<th>SubId</th>
        <th>SubName</th>

      </tr>
    </thead>
   <tbody>
	<%
	SubjectOperation st=new SubjectOperation();
	if(st.searchByName(targetname)!=null){
	List li=st.searchByName(targetname);
	ListIterator lit=li.listIterator(); 
	while(lit.hasNext())
	{
		Subjects std=(Subjects)lit.next();
		%>
		<tr>
	    <td><%= std.getSid()%></td>
        <td><%= std.getSname()%></td>
      	<td><a class="update" href="SubjectUpdate.jsp?id=<%=std.getSid()%>">Update</a></td>	
		<td><a class="delete" href="../../DeleteSubject?id=<%=std.getSid() %>">Delete</a></td>
		<td><a class="addQ" href="../../TopicSubject?id=<%=std.getSid()%>">AddTopic</a></td>	
        </tr> 
      <%
	} 		}
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
    <h2>subject Detail</h2> 
    <table class="table ">    
    <thead>
      <tr>
      	<th>SubId</th>
        <th>SubName</th>
      </tr>
    </thead>
    
    <tbody>
	<%
	SubjectOperation st=new SubjectOperation();
	List li=st.selectAllSubject();
	ListIterator lit=li.listIterator(); 
	while(lit.hasNext())
	{
		Subjects std=(Subjects)lit.next();
		%>
		<tr>
	    <td><%= std.getSid()%></td>
        <td><%= std.getSname()%></td>
      	<td><a class="update" href="SubjectUpdate.jsp?id=<%=std.getSid()%>">Update</a></td>	
		<td><a class="delete" href="../../DeleteSubject?id=<%=std.getSid()%>">Delete</a></td>
		  </tr> 		
		
      <%
      		}
      %> 
    </tbody>
  </table>
</div>
</body>
</html>