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

Button = request.getParameter("button20");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques21", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques22.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
	<div class="box">
			<div class="ques">
				<b>21.A cuboid of dimension 50cm*40cm*30cm is cut in to K cubes. What is the minimum value of k such that size of every cube is equal and as large as possible?</b>

			</div><br>
			<form action="ques21.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="15">15<br><br>
				<input type="radio" name="answer1" value="30">30<br><br>
				<input type="radio" name="answer1" value="60">60<br><br>
				<input type="radio" name="answer1" value="45">45<br><br>
			</div>
		<div class="next"><button type="submit" name="button20" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>