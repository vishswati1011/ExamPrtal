<%@page import="java.util.Iterator"%>
<%@page import="bean.OptionAnswer"%>
<%@page import="bean.Question"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.util.List"%>
<%@page import="DAO.DisplayOperation"%>

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
	
		<%
		
		HttpSession ses=request.getSession();
		int ssid=(Integer)ses.getAttribute("sid");
		ses.setAttribute("sid", ssid);
		int count=(Integer)ses.getAttribute("count");	
		ses.setAttribute("count", count);
		%>
		<table border="2"  width="6" cellspacing="10" cellpadding="20">
			
	    <tr>
		<td>
		<h2>Question:<%=request.getAttribute("ques")%></h2>
		</td>
		<td><form action="FatchQuestion" mathod="get">
			
			<label><input type="radio" name="optradio" value="<%=request.getAttribute("op1")%>" />
			<%=request.getAttribute("op1")%></label><br>
		    <label><input type="radio" name="optradio" value="<%=request.getAttribute("op2")%>" />
		    <%=request.getAttribute("op2")%></label><br>
			<label><input type="radio" name="optradio" value="<%=request.getAttribute("op3")%>" />
			<%=request.getAttribute("op3")%></label><br>
			<label><input type="radio" name="optradio" value="<%=request.getAttribute("op4")%>" /> 
			<%=request.getAttribute("op4")%></label><br>
			<input type="hidden" id="ans" name="ans" value="<%=request.getAttribute("ans")%>"  />
			<input type="submit" name="submit" value="Submit">
				
				</form>
		
			 <script>
			function displayRadioValue() {    	
	           
	            var ele = document.getElementsByName('optradio'); 
	      		var ans = document.getElementByName('ans');
	            for( var i = 0; i < ele.length; i++) { 
	                if(ele[i].checked) 
	                {   
	                	var option=ele[i].value; 
	                	var length =ele.length;
	                	var n = option.localeCompare(ans);
	             		 document.getElementById("result").innerHTML
	                    = "Answer: "+ans;
	             		 document.getElementById("mahi").innerHTML
	                    = "option: "+option;
	                	document.getElementById("n").innerHTML
	                    = "N: "+n;
	                	document.getElementById("length").innerHTML
	                    = "length: "+length;
	                	document.getElementById("i").innerHTML
	                    = "i: "+i;
	                	return true;

	                }
	                
	            }
	            return true;
	            } 
			</script>
			</td>
			<td>
			<br>
			<div id="result"></div>
			<div id="mahi"></div>
			<div id="n"></div>
			<div id="length"></div>
			<div id="i"></div>	
			</td>	
		</tr>
		 	
			</table>
			
</body>
</html>