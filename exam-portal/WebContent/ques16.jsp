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

Button = request.getParameter("button15");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques16", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques17.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
	<div class="box">
			<div class="ques">
				<b>16.If A + B means A is the brother of B; A x B means A is the son of B; and A % B means B is the daughter of A then which of the following means M is the maternal uncle of N?</b>

			</div><br>
			<form action="ques16.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="M + O x N">M + O x N<br><br>
				<input type="radio" name="answer1" value="M % O x N + P">M % O x N + P<br><br>
				<input type="radio" name="answer1" value="M + O % N">M + O % N<br><br>
				<input type="radio" name="answer1" value="Noneofthese">None of these<br><br>
				
			</div>
		<div class="next"><button type="submit" name="button15" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>