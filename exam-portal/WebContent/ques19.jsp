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

Button = request.getParameter("button18");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques19", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques20.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
	<div class="box">
			<div class="ques">
				<b>19.In a certain store, the profit is 320% of the cost. If the cost increases by 25% but the selling price remains constant, approximately what percentage of the selling price is the profit?</b>

			</div><br>
			<form action="ques19.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="30">30%<br><br>
				<input type="radio" name="answer1" value="70">70%<br><br>
				<input type="radio" name="answer1" value="100">100%<br><br>
				<input type="radio" name="answer1" value="250">250%<br><br>
			</div>
		<div class="next"><button type="submit" name="button18" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>