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

Button = request.getParameter("button12");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques13", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques14.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
	<div class="box">
			<div class="ques">
				<b>13.Two articles were sold at Rs. 480 each. On one, he gains 20% and on the other, he loses 12%. How much does he gain or lose in the whole transaction?</b>

			</div><br>
			<form action="ques13.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="1.54">1.54%<br><br>
				<input type="radio" name="answer1" value="2.5">2.5%<br><br>
				<input type="radio" name="answer1" value="3.4">3.4%<br><br>
				<input type="radio" name="answer1" value="2.34">2.34%<br><br>
			</div>
		<div class="next"><button type="submit" name="button12" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>