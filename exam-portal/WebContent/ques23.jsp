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

Button = request.getParameter("button22");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques23", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques24.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
	<div class="box">
			<div class="ques">
				<b>23.Two students appeared at an examination. One of them secured 9 marks more than the other and his marks was 56% of the sum of their marks. The marks obtained by them are:</b>

			</div><br>
			<form action="ques23.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="3930">39, 30<br><br>
				<input type="radio" name="answer1" value="4132">41, 32<br><br>
				<input type="radio" name="answer1" value="4233">42, 33<br><br>
				<input type="radio" name="answer1" value="4334">43, 34<br><br>
			</div>
		<div class="next"><button type="submit" name="button22" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>