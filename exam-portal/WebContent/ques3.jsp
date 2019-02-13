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

Button = request.getParameter("button2");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques3", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques4.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
<div class="box">
			<div class="ques">
				<b>3.A two digit number is 18 less than the square of the sum of its digits. How many such numbers are there?</b>
			</div><br>
			<form action="ques3.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="1">1<br><br>
				<input type="radio" name="answer1" value="2">2<br><br>
				<input type="radio" name="answer1" value="3">3<br><br>
				<input type="radio" name="answer1" value="4">4<br><br>
			</div>
			<div class="next"><button type="submit" name="button2" value="submit">Next</button></div>
		 </form>
		</div>
</body>
</html>