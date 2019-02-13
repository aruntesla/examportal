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
Button = request.getParameter("button6");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques7", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques8.jsp");
		rd.forward(request, response);
		
	}
}
%>
<body>
<div class="box">
			<div class="ques">
				<b>In a flight of 600 km, an aircraft was slowed down due to bad weather. Its average speed for the trip was reduced by 200 km/hr and the time of flight increased by 30 minutes. The duration of the flight is:</b>
			</div><br>
			<form action="ques7.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="1 hour">1 hour<br><br>
				<input type="radio" name="answer1" value="2 hours">2 hours<br><br>
				<input type="radio" name="answer1" value="3 hours">3 hours<br><br>
				<input type="radio" name="answer1" value="4 hours">4 hours<br><br>
			</div>
			<div class="next"><button type="submit" name="button6" value="submit">Next</button></div>
		 </form>
		</div>
		
</body>
</html>