<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exam-Portal</title>
<style>
body
{
background-color:lightgrey;
}
</style>
</head>
<%
String ans1 = (String)application.getAttribute("ques1");
String ans2 = (String)application.getAttribute("ques2");
String ans3 = (String)application.getAttribute("ques3");
String ans4 = (String)application.getAttribute("ques4");
String ans5 = (String)application.getAttribute("ques5");
String ans6 = (String)application.getAttribute("ques6");
String ans7 = (String)application.getAttribute("ques7");
String ans8 = (String)application.getAttribute("ques8");
String ans9 = (String)application.getAttribute("ques9");
String ans10 = (String)application.getAttribute("ques10");
String ans11 = (String)application.getAttribute("ques11");
String ans12 = (String)application.getAttribute("ques12");
String ans13 = (String)application.getAttribute("ques13");
String ans14 = (String)application.getAttribute("ques14");
String ans15 = (String)application.getAttribute("ques15");
String ans16 = (String)application.getAttribute("ques16");
String ans17 = (String)application.getAttribute("ques17");
String ans18 = (String)application.getAttribute("ques18");
String ans19 = (String)application.getAttribute("ques19");
String ans20 = (String)application.getAttribute("ques20");
String ans21 = (String)application.getAttribute("ques21");
String ans22 = (String)application.getAttribute("ques22");
String ans23 = (String)application.getAttribute("ques23");
String ans24 = (String)application.getAttribute("ques24");
String ans25 = (String)application.getAttribute("ques25");
int i=0;
if(ans1.equals("3700"))
{
	i++;
	System.out.println(ans1);
}
if(ans2.equals("191"))
{
	i++;
	System.out.println(ans2);
}
if(ans3.equals("2"))
{
	i++;
	System.out.println(ans3);
}
if(ans4.equals("39.6"))
{
	i++;
	System.out.println(ans4);
}
if(ans5.equals("10"))
{
	i++;
	System.out.println(ans5);
}
if(ans6.equals("28"))
{
	i++;
	System.out.println(ans6);
}
if(ans7.equals("1 hour"))
{
	i++;
	System.out.println(ans7);
}

if(ans8.equals("2"))
{
	i++;
	System.out.println(ans8);
}

if(ans9.equals("40"))
{
	i++;
	System.out.println(ans9);
}
if(ans10.equals("48"))
{
	i++;
	System.out.println(ans10);
}
if(ans11.equals("14"))
{
	i++;
	System.out.println(ans11);
}
if(ans12.equals("29.9"))
{
	i++;
	System.out.println(ans12);
}
if(ans13.equals("1.54"))
{
	i++;
	System.out.println(ans13);
}
if(ans14.equals("8"))
{
	i++;
	System.out.println(ans14);
}
if(ans15.equals("16"))
{
	i++;
	System.out.println(ans15);
}
if(ans16.equals("Noneofthese"))
{
	i++;
	System.out.println(ans16);
}
if(ans17.equals("D"))
{
	i++;
	System.out.println(ans17);
}
if(ans18.equals("1"))
{
	i++;
	System.out.println(ans18);
}
if(ans19.equals("70"))
{
	i++;
	System.out.println(ans19);
}
if(ans20.equals("12"))
{
	i++;
	System.out.println(ans20);
}
if(ans21.equals("60"))
{
	i++;
	System.out.println(ans21);
}
if(ans22.equals("160"))
{
	i++;
	System.out.println(ans22);
}
if(ans23.equals("4233"))
{
	i++;
	System.out.println(ans23);
}
if(ans24.equals("1200"))
{
	i++;
	System.out.println(ans24);
}
if(ans25.equals("C"))
{
	i++;
	System.out.println(ans25);
}
System.out.println("Total:"+i);
String email  = (String)application.getAttribute("email");
String subject = "Result";
String content = "Total'"+i+"'";
application.setAttribute("total", i);
String page1 = "result1.jsp";
request.setAttribute("email", email);
request.setAttribute("subject", subject);
request.setAttribute("page", page1);
request.setAttribute("content", content);

RequestDispatcher rd = request.getRequestDispatcher("EmailSendingServlet");
   rd.forward(request, response);

%>
<body>
<div style="color:red;font-size:20px;margin-top:250px;" align="center">
   <h1>RESULT:***** <%=i %>***** Answers are correct</h1>
</div> 
   
</body>
</html>