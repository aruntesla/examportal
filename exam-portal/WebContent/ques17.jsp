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

Button = request.getParameter("button16");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques17", ans);
		RequestDispatcher rd = request.getRequestDispatcher("ques18.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
	<div class="box">
			<div class="ques">
				<b>17.Coding-Decoding:<br>
					In a certain code, the following alphabets are coded in a certain way by assigning numbers as follows <br>
					A D I L M N O R W <br>
					1 2 3 4 5 6 7 8 9 <br>
					Which word can be decoded from the following ?<br>
					163514 97842<br>
				</b>

			</div><br>
			<form action="ques17.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="A">ANIMAL WORLD<br><br>
				<input type="radio" name="answer1" value="B">ANIMAL LESS WORLD<br><br>
				<input type="radio" name="answer1" value="C">WORLD OF ANIMALS<br><br>
				<input type="radio" name="answer1" value="D">ANIMALS WORLD<br><br>
			</div>
		<div class="next"><button type="submit" name="button16" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>