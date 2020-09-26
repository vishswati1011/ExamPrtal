<%@page import="DAO.DisplayOperation"%>
<%@page import="bean.Topic"%>
<%@page import="bean.Subjects"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="DAO.SubjectOperation"%>
<%
	
	SubjectOperation sub = new SubjectOperation();
	List li = sub.selectAllSubject();
	ListIterator lit = li.listIterator();
%><%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Display Subject</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/CSSFolder/dropdownCSS.css" />
	
<%@include file="//CommonThing/BTCDN.jsp"%>
</head>
<body>
	<div class="container">
		<h2>Searched Data</h2>
		<table class="table ">
			<thead>
				<tr>
					<th>SubjectId</th>
					<th>SubjectName</th>
				</tr>
			</thead>

			<tbody>
				<%
					while (lit.hasNext()) {
					Subjects std = (Subjects) lit.next();
				%>
				<tr>
					<td><%=(Integer) std.getSid()%></td>
					<td><%=std.getSname()%></td>
					<td><a class="update" href="StartTest.jsp?sid=<%=std.getSid()%>">Select Topic</a></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>

</body>
</html>
