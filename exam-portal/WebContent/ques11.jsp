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

Button = request.getParameter("button10");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques11", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques12.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
	<div class="box">
			<div class="ques">
				<b>11.A father said to his son, "I was as old as you are at the present at the time of your birth". If the father's age is 38 years now, so the son's age five years back was:</b>


			</div><br>
			<form action="ques11.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="19">19 years<br><br>
				<input type="radio" name="answer1" value="14">14 years<br><br>
				<input type="radio" name="answer1" value="33">33 years<br><br>
				<input type="radio" name="answer1" value="16">16 years<br><br>
			</div>

		<div class="next"><button type="submit" name="button10" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>