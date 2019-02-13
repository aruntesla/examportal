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

Button = request.getParameter("button8");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques9", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques10.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
<div class="box">
			<div class="ques">
				<b>9.The L.C.M. of two numbers is 48. The numbers are in the ratio 2 : 3. Then sum of the number is:</b>
			</div><br>
			<form action="ques9.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="28">28<br><br>
				<input type="radio" name="answer1" value="32">32<br><br>
				<input type="radio" name="answer1" value="40">40<br><br>
				<input type="radio" name="answer1" value="64">64<br><br>
			</div>
		<div class="next"><button type="submit" name="button8" value="submit">Next</button></div>
		 </form>
		</div>
</body>
</html>