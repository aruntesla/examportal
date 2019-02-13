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

Button = request.getParameter("button14");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques15", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques16.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
	<div class="box">
			<div class="ques">
				<b>15.The cost price of 20 articles is the same as the selling price of x articles. If the profit is 25%, then the value of x is:</b>

			</div><br>
			<form action="ques15.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="15">15<br><br>
				<input type="radio" name="answer1" value="16">16<br><br>
				<input type="radio" name="answer1" value="18">18<br><br>
				<input type="radio" name="answer1" value="25">25<br><br>
				
			</div>
		<div class="next"><button type="submit" name="button14" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>