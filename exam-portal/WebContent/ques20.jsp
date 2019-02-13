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

Button = request.getParameter("button19");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques20", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques21.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
	<div class="box">
			<div class="ques">
				<b>20. If sqrt(x+sqrt(x+sqrt(x+sqrt(x+sqrt(x+....))))) = 4.What is the value of x?</b>

			</div><br>
			<form action="ques20.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="4">4<br><br>
				<input type="radio" name="answer1" value="9">9<br><br>
				<input type="radio" name="answer1" value="6">6<br><br>
				<input type="radio" name="answer1" value="12">12<br><br>
				
			</div>
		<div class="next"><button type="submit" name="button19" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>