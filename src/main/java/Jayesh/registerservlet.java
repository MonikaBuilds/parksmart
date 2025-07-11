package Jayesh;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class registerservlet
 */
@WebServlet("/registerservlet")
public class registerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fullname = request.getParameter("txtfullname");
		String uname = request.getParameter("txtuname");
		String email = request.getParameter("txtemail");
		String phoneno = request.getParameter("txtphone");
		String password = request.getParameter("txtpass");
		String cp = request.getParameter("txtcp");
		String dl = request.getParameter("txtdl");
		String uid = request.getParameter("txtuid");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parksmart","root","Jayesh@45");
			PreparedStatement ps =con.prepareStatement("insert into register(fullname,username,email,Phonenumber,password,confrimpassword,driverlicence,uid) values(?,?,?,?,?,?,?,?)");
			ps.setString(1, fullname);
			ps.setString(2, uname);
			ps.setString(3, email);
			ps.setString(4, phoneno);
			ps.setString(5, password);
			ps.setString(6, cp);
			ps.setString(7, dl);
			ps.setString(8, uid);
			
			int rowCount = ps.executeUpdate();
			RequestDispatcher rd= request.getRequestDispatcher("login.jsp");
			if (rowCount > 0)
			{
				request.setAttribute("status", "success");
			}else {
				request.setAttribute("status", "failed");
			}
			
			rd.forward(request, response);
		} catch(Exception e) {
			e.printStackTrace();
		} 
		}
	}


