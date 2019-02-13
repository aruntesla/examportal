<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exam-Portal</title>

<style>
body{
	margin:0;
	padding:0;
	background:url(image/aptitude.jpg);
	background-repeat:no-repeat;
	background-position:right top;
	background-color:#fbf9e2;
	font-family: arial;
}
.pic1{
	width:100px;
	height:100px;
	border-radius:50%
	position: absolute;
	top:-50%
	left: calc(50% - 50px);
}

.box{
	padding:50px;
}

a:link, a:visited {
  background-color: #f44336;
  color: white;
  padding: 14px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: red;
}
.buttonmod{
	padding:20px 150px;
}
</style>
</head>

<body>
	<div class="box">
		
		<h2>
			Welcome to Aptitude section!
		</h2>
	</div>
	<div class="box">
		<b>Rules:</b>
		<ul>
			<li>You will be provided with 25 questions.</li>
			<li>30 minutes in total will be provided for solving.</li>
			<li>Each answer carries 1 mark.</li>
			<li>No negative markings.</li>
			<li>Please use provided rough paper for workouts</li>
		</ul>
	</div>
	<div class="buttonmod">
	<a href="ques1.jsp">Start Test</a>
	</div>

</body>

</html>