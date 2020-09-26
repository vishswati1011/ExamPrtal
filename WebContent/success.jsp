
<%@page import="bean.Student"%>
<%
int sid=0,right=0,total=0;
HttpSession sess=request.getSession();
total=(Integer)sess.getAttribute("sid");
right=(Integer)sess.getAttribute("count");
int wrong=sid-right;

Cookie ck[]=request.getCookies();  
if(ck!=null){
	String std=ck[0].getValue();
	Object obj=std;
	
 %>



<html>
<body>

	<marquee> Your Result</marquee>
	<h1><%=total %></h1>
	<h2>Total right answer<%=right %></h2>
	<h2>Total wrong answer<%=wrong %></h2>
<%} %>	
</body></html>



























<%---<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Dropdowns</h2>
  <p>Add the .dropright class next to the dropdown menu to right-align the dropdown. Note that the caret/arrows is added automatically:</p>
  <div class="dropdown dropright">
    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
      Dropright button
    </button>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Link 1</a>
      <a class="dropdown-item" href="#">Link 2</a>
      <a class="dropdown-item" href="#">Link 3</a>
    </div>
  </div>
</div>

</body>
</html> --%>
