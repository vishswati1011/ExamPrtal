<%@page import="DAO.DisplayOperation"%>
<%@page import="bean.Topic"%>
<%@page import="bean.Subjects"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="DAO.SubjectOperation"%>
<% DisplayOperation so=new DisplayOperation();
	SubjectOperation sub=new SubjectOperation();
	int sid=Integer.parseInt(request.getParameter("sid"));
List li=so.SearchTopicBySubjectName(sid);
System.out.println("StartTestsid==="+sid+ " ===" +li);
ListIterator lit=li.listIterator(); 
int i=0;
int count=0;
HttpSession ssid=request.getSession();
ssid.setAttribute("sid",i);
ssid.setAttribute("count",count);
%><%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <title>Display Topic</title>
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSSFolder/dropdownCSS.css" /> 
       <%@include file="//CommonThing/BTCDN.jsp"%>
    </head>
    <body>
       <div class="container">
		<h2>Searched Data</h2>
		<table class="table ">
			<thead>
				<tr>
					<th>Topic Id</th>
					<th>Topic Name</th>
				</tr>
			</thead>
			<tbody>
			<%
				while (lit.hasNext()) {
					Topic tid = (Topic) lit.next();
			%>
				<tr>
					<td><%=(Integer) tid.getId()%></td>
					<td><%=tid.getTopicname()%></td>
					<td><a class="update" href="DisplayQuestion.jsp?id=<%=tid.getId()%>&page=1">Select Question</a></td>
				</tr><%
				}
			%>
		</tbody>
		</table>
	</div>
    </body>
</html>
