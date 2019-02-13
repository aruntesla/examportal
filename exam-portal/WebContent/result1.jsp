<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
int i = (Integer)application.getAttribute("total");
%>
<body>
<div style="color:red;font-size:20px;margin-top:250px;" align="center">
   <h1>RESULT:***** <%=i %>***** Answers are correct</h1>
</div> 

</body>
</html>