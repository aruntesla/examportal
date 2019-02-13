<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exam-Portal</title>
<link rel="stylesheet" type="text/css" href="css/ques.css">
</head>
<%
String Button = "";
String ans = "";
Button = request.getParameter("button1");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques2", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques3.jsp");
		rd.forward(request, response);
		
	}
}
%>
<body>
<div class="box">
			<div class="ques">
				<b>2.What is the next numbers for the given series? 11 23 47 83 131</b>
			</div><br>
			<form action="ques2.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="181">181<br><br>
				<input type="radio" name="answer1" value="191">191<br><br>
				<input type="radio" name="answer1" value="171">171<br><br>
				<input type="radio" name="answer1" value="201">201<br><br>
			</div>
			<div class="next"><button type="submit" name="button1" value="submit">Next</button></div>
		 </form>
		 </div>
</body>
</html>