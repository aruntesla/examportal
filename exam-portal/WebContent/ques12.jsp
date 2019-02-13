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

Button = request.getParameter("button11");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques12", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques13.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
	<div class="box">
			<div class="ques">
				<b>12.The mean of 100 bags was found to be 30. What will be the correct mean if at the time of calculation two bags were wrongly taken as 32 and 12 instead of 23 and 11?</b>

			</div><br>
			<form action="ques12.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="29.9">29.9<br><br>
				<input type="radio" name="answer1" value="30.5">30.5<br><br>
				<input type="radio" name="answer1" value="34.9">34.9<br><br>
				<input type="radio" name="answer1" value="50.8">50.8<br><br>
				
			</div>
		<div class="next"><button type="submit" name="button11" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>