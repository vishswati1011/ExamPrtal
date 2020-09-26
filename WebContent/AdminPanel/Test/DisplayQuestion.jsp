<%@page import="java.util.Iterator"%>
<%@page import="bean.OptionAnswer"%>
<%@page import="bean.Question"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="DAO.DisplayOperation"%>
<%
	DisplayOperation so = new DisplayOperation();
	int qid = Integer.parseInt(request.getParameter("id"));
	String spageid = request.getParameter("page");
	int pageid = Integer.parseInt(spageid);
	int total = 5;
	if (pageid == 1) {
	} else {
		pageid = pageid - 1;
		pageid = pageid * total + 1;
	}
	List li = so.SelectAllQuestionBytopicName(qid, pageid, total);
	System.out.println("DispalyQuestion sid===" + qid + " ===" + li);
	ListIterator lit = li.listIterator();
	List<OptionAnswer> list2;
	ListIterator<OptionAnswer> itr2;
	OptionAnswer obj;
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Question Page</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/CSSFolder/nextbuttonCSS.css" />
<%@include file="//CommonThing/BTCDN.jsp"%>
</head>
<body>
	<form action="FatchQuestion" mathod="get">
		<table border="2" width="10" cellspacing="100" cellpadding="150">
			<%
				while (lit.hasNext()) {
					Question q_id = (Question) lit.next();
			%>
			<tr>
				<td>
					<h2>
						Question:<%=q_id.getQuestion()%></h2>
				</td>
				<%
					list2 = q_id.getAnswer();
						itr2 = list2.listIterator();
						itr2.hasNext();
						obj = itr2.next();
				%>
				<td><label><input type="radio" name="optradio"
						value="<%=obj.getOptionA()%>" /> <%=obj.getOptionA()%></label><br> <label><input
						type="radio" name="optradio" value="<%=obj.getOptionB()%>" /> <%=obj.getOptionB()%></label><br>
					<label><input type="radio" name="optradio"
						value="<%=obj.getOptionC()%>" /> <%=obj.getOptionC()%></label><br> <label><input
						type="radio" name="optradio" value="<%=obj.getOptionD()%>" /> <%=obj.getOptionD()%></label><br>
					<input type="hidden" id="ans" name="ans"
					value="<%=obj.getAnswer()%>" /> <%--
				 --%></td>
			</tr>


			<%
				}
			%>
			<input type="submit" name="submit" value="Submit">
			</form>
		</table>
		<a href="DisplayQuestion.jsp?id=<%=qid%>&page=1">1</a> <a
			href="DisplayQuestion.jsp?id=<%=qid%>&page=2">2</a> <a
			href="DisplayQuestion.jsp?id=<%=qid%>&page=3">3</a>
</body>
</html>