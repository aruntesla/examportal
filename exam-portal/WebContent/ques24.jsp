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

Button = request.getParameter("button23");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques24", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques25.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
	<div class="box">
			<div class="ques">
				<b>24.A sum was put at simple interest at a certain rate for 10 years . Had it been put at 5% higher rate , it would have fetched Rs.600 more. What was the Sum?</b>

			</div><br>
			<form action="ques24.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="1200">Rs.1200<br><br>
				<input type="radio" name="answer1" value="Rs.1300">Rs.1300<br><br>
				<input type="radio" name="answer1" value="Rs.1400">Rs.1400<br><br>
				<input type="radio" name="answer1" value="Rs.1500">Rs.1500<br><br>
				
			</div>
		<div class="next"><button type="submit" name="button23" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>