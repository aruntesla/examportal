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

Button = request.getParameter("button24");
if(Button != null)
{
	if(Button.equals("submit"))
	{
		ans = request.getParameter("answer1");
		System.out.println("ans"+ans);
		application.setAttribute("ques25", ans);
		RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
		rd.forward(request, response);
		
	}
}
%>
	

<body>
	<div class="box">
			<div class="ques">
				<b>25.Coding-Decoding : If in a code language, COULD is written as BNTKC and MARGIN is written as LZQFHM,how will MOULDING be written in that code?</b>

			</div><br>
			<form action="ques25.jsp" method="post">
			<div class="opt">
				<input type="radio" name="answer1" value="A">CHMFINTK<br><br>
				<input type="radio" name="answer1" value="B">LNKTCHMF<br><br>
				<input type="radio" name="answer1" value="C">LNTKCHMF<br><br>
				<input type="radio" name="answer1" value="D">NITKHCMF<br><br>
			</div>
		<div class="next"><button type="submit" name="button24" value="submit">Next</button></div>
		 </form>
		</div>

</body>
</html>