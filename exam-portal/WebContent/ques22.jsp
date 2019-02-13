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

Button = request.getParameter("button21");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques22", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques23.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
	<div class="box">
			<div class="ques">
				<b>22.If the income in 1998 was Rs. 264 crores, what was the expenditure in 1998?</b>

			</div><br>
			<form action="ques22.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="Rs. 104 crores">Rs. 104 crores<br><br>
				<input type="radio" name="answer1" value="Rs. 145 crores">Rs. 145 crores<br><br>
				<input type="radio" name="answer1" value="160">Rs. 160 crores<br><br>
				<input type="radio" name="answer1" value="Rs. 185 crores">Rs. 185 crores<br><br>
				
			</div>
		<div class="next"><button type="submit" name="button21" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>