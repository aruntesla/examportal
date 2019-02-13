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
Button = request.getParameter("button");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques1", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques2.jsp");
		rd.forward(request, response);
		
	}
}
%>
<body>
<div class="box">
			<div class="ques">
				<b>1.A person starts writing all 4 digits numbers.how many times had he written the digit 2?</b>
			</div><br>
			<form action="ques1.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="3700">3700<br><br>
				<input type="radio" name="answer1" value="32000">32000<br><br>
				<input type="radio" name="answer1" value="37000">37000<br><br>
				<input type="radio" name="answer1" value="3200">3200<br><br>
			</div>
			<div class="next"><button type="submit" name="button" value="submit">Next</button></div>
		 </form>
		</div>
		
</body>
</html>