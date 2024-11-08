

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.*;
import java.io.*;


/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String a=request.getParameter("n1");
		String b=request.getParameter("n2");
		PrintWriter pw=response.getWriter();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","2002");
	        Statement st=con.createStatement();
	        ResultSet rs=st.executeQuery("select * from reg where username='"+a+"' and password='"+b+"'");
	        if(rs.next())
	        {
	        	HttpSession session=request.getSession();
	        	session.setAttribute("username", a);
	        	
	        	response.sendRedirect("Adminhome.jsp");
	        }
	        else
	        {
	        	response.sendRedirect("Adminlogin.jsp");
;	        }
			
		}
		catch(Exception e)
		{
			pw.println(e);
		}
		

	}

}
