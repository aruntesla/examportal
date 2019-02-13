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

Button = request.getParameter("button5");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques6", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques7.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
<div class="box">
			<div class="ques">
				<b> 6.When I add 3 times my age 3 years from now to 4 times my age 4 years from now, I get 8 times my current age. How old will I be 3 years from now?

</b>
			</div><br>
			<form action="ques6.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="28 years">28 years<br><br>
				<input type="radio" name="answer1" value="24 years">24 years<br><br>
				<input type="radio" name="answer1" value="20 years">20 years<br><br>
				<input type="radio" name="answer1" value="32 years">32 years<br><br>
				<input type="radio" name="answer1" value="30 years">30 years<br><br>
			</div>
		<div class="next"><button type="submit" name="button5" value="submit">Next</button></div>
		 </form>
		</div>
</body>
</html>