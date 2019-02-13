package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet 
{
	Connection con = null;
	PreparedStatement ps = null;
	
	String name="";
	String email="";
	String password="";
	String college="";
	String department="";
	String year="";
	String mailcheck="";
	String date="";
	String subject="Register Successful";
	String page="/exam-portal/login.jsp";
	String content = "Thank For Registeration";
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		name = request.getParameter("username");
		email = request.getParameter("email");
		password = request.getParameter("password");
		college = request.getParameter("college");
		department = request.getParameter("department");
		year = request.getParameter("year");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy MMM dd");	
		Calendar calendar = new GregorianCalendar(2013,0,31);
		System.out.println(sdf.format(calendar.getTime()));
		date=String.valueOf(sdf.format(calendar.getTime()));
		System.out.println(email);
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/examportal", "root", "root");
			String query = "select *from register where  email='"+email+"'";
			ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				mailcheck = rs.getString(3);
			}
		}
		catch(Exception e)
		{
			System.out.println("Check"+e);
		}
		System.out.println(mailcheck);
	if(mailcheck.isEmpty())
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/examportal", "root", "root");
			String query = "insert into register values(?,?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setInt(1,0);
			ps.setString(2, name);
			ps.setString(3, email);
			ps.setString(4, password);
			ps.setString(5, college);
			ps.setString(6, department);
			ps.setString(7, year);
			ps.setString(8, date);
			ps.setInt(9, 0);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		request.setAttribute("email", email);
		request.setAttribute("content", content);
		request.setAttribute("subject", subject);
		request.setAttribute("page", page);
		RequestDispatcher rd = request.getRequestDispatcher("EmailSendingServlet");
		   rd.forward(request, response);
	}
	else
	{
		System.out.println("ema:0"+email);
		
		request.setAttribute("value", "invalid");
		 RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
		 rd.forward(request, response);
	}

	}

}
