

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.io.*;

/**
 * Servlet implementation class Pdelete
 */
@WebServlet("/Pdelete")
public class Pdelete extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int a=Integer.parseInt(request.getParameter("n1"));
		PrintWriter pw=response.getWriter();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
	        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce","root","2002");
	        Statement st=con.createStatement();
	        st.executeUpdate("delete from padd where P_id="+a+" ");
	        response.sendRedirect("Adminhome.jsp");
	        
		}
		catch(Exception e)
		{
			pw.println(e);
		}
	
	}

}