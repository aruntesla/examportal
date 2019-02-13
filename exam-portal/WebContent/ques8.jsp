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

Button = request.getParameter("button7");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques8", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques9.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
<div class="box">
			<div class="ques">
				<b> 8.A boat takes 90 minutes less to travel 36 miles downstream than to travel the same distance upstream. If the speed of the boat in still water is 10 mph, the speed of the stream is:

</b>
			</div><br>
			<form action="ques8.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="2">2<br><br>
				<input type="radio" name="answer1" value="2.5">2.5<br><br>
				<input type="radio" name="answer1" value="3">3<br><br>
				<input type="radio" name="answer1" value="4">4<br><br>
				
			</div>
		<div class="next"><button type="submit" name="button7" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>