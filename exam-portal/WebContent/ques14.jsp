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

Button = request.getParameter("button13");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques14", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques15.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
	<div class="box">
			<div class="ques">
				<b>14.The difference between a two digit number and the number obtained by interchanging the digits is 72. What is the difference between the digits of the number?</b>

			</div><br>
			<form action="ques14.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="5">5<br><br>
				<input type="radio" name="answer1" value="6">6<br><br>
				<input type="radio" name="answer1" value="7">7<br><br>
				<input type="radio" name="answer1" value="8">8<br><br>
			</div>
		<div class="next"><button type="submit" name="button13" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>