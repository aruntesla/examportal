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

Button = request.getParameter("button4");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques5", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques6.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
<div class="box">
			<div class="ques">
				<b>5.A and B completed a work together in 5 days. Had A worked at twice the speed and B at half the speed, it would have taken them four days to complete the job. How much time would it take for A alone to do the work?</b>
			</div><br>
			<form action="ques5.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="10">10 days<br><br>
				<input type="radio" name="answer1" value="11">11 days<br><br>
				<input type="radio" name="answer1" value="12">12 days<br><br>
				<input type="radio" name="answer1" value="13">13 days<br><br>
			</div>
			<div class="next"><button type="submit" name="button4" value="submit">Next</button></div>
		 </form>
		</div>
</body>
</html>