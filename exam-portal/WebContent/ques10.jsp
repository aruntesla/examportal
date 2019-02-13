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

Button = request.getParameter("button9");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques10", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques11.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
	<div class="box">
			<div class="ques">
				<b> 10.Two trains are moving in opposite directions @ 60 km/hr and 90 km/hr. Their lengths are 1.10 km and 0.9 km respectively. The time taken by the slower train to cross the faster train in seconds is:

</b>
			</div><br>
			<form action="ques10.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="36">36<br><br>
				<input type="radio" name="answer1" value="45">45<br><br>
				<input type="radio" name="answer1" value="48">48<br><br>
				<input type="radio" name="answer1" value="49">49<br><br>
				
			</div>
		<div class="next"><button type="submit" name="button9" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>