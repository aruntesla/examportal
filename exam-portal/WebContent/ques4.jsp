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

Button = request.getParameter("button3");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques4", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques5.jsp");
		rd.forward(request, response);
		
	}
}
%>

<body>
<div class="box">
			<div class="ques">
				<b>4.A boy is cycling such that the wheel of the cycle are making 420 revolutions per minute. If the diameter of the wheel is 50 cm, find the speed of the boy.
</b>
			</div><br>
			<form action="ques4.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="39.6">39.6<br><br>
				<input type="radio" name="answer1" value="38.6">38.6<br><br>
				<input type="radio" name="answer1" value="37.6">37.6<br><br>
				<input type="radio" name="answer1" value="36.6">36.6<br><br>
			</div>
		<div class="next"><button type="submit" name="button3" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>