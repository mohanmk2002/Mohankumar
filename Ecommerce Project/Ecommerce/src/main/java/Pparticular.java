

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.io.*;
/**
 * Servlet implementation class Pparticular
 */
@WebServlet("/Pparticular")
public class Pparticular extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		String a=request.getParameter("n1");
		String b=request.getParameter("n2");
		String c=request.getParameter("n3"); 
		String d=request.getParameter("n4");
		String e=request.getParameter("n5");
		String f=request.getParameter("n6");
		String g=request.getParameter("n7");
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","2002");
	        Statement st=con.createStatement();
	        st.executeUpdate("insert into order1(username,pname,price,address,quantity,payment,orderdate) values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"')");
	        response.sendRedirect("Pdetails.jsp"); 
			
		}
		catch(Exception e1)
		{
			pw.println(e);
		}

	}

}
