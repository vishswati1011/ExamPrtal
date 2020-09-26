 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Subject Insert Form</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <%@include file="//CommonThing/BTCDN.jsp" %>
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/CSSFolder/BackgoundCSS.css" />
 
</head>
<body>

<div class="container">
  <h2>Subject Insert Form</h2>
  <form action="../../AddSubjectController" method="GET">
    <div class="form-group">
      <label for="name">Subject Name:</label>
      <input type="text" class="form-control" id="sub_name" placeholder="Enter your name" name="sub_name">
    </div>
    <div class="form-group">
      <label for="pwd">Subject Total Question:</label>
      <input type="text" class="form-control" id="sub_total_ques" placeholder="Enter your address" name="sub_total_ques"/>
    </div>
        <div class="form-group">
      <label for="pwd">Subject Max Marks:</label>
      <input type="text" class="form-control" id="sub_max_marks" placeholder="Enter your contact" name="sub_max_marks">
    </div>
        <div class="form-group">
      <label for="pwd">Sub Duration:</label>
      <input type="text" class="form-control" id="sub_duration" placeholder="Enter your fees" name="sub_duration">
    </div>
        <div class="form-group">
      <label for="pwd">Sub Offer:</label>
      <input type="text" class="form-control" id="sub_offer" placeholder="Enter your admission_date" name="sub_offer">
    </div>
    <div class="form-group">
      <label for="pwd">Sub Passing Marks:</label>
      <input type="text" class="form-control" id="sub_passing_marks" placeholder="Enter your email" name="sub_passing_marks">
    </div>
    <input type="submit" value="Submit"/>
  </form>
</div>

</body>
</html>