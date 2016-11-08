package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UsersDAO;
import model.Users;

/**
 * Servlet implementation class Doimatkhau
 */
@WebServlet("/Doimatkhau")
public class Doimatkhau extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Doimatkhau() {
		super();
		// TODO Auto-generated constructor stub
	}

	UsersDAO usersDAO = new UsersDAO();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");

		String url = "";
		Users users = new Users();
		String newpass = request.getParameter("newpass");
		String currentpass = request.getParameter("currentpass");
		String cofirmpass = request.getParameter("confirmpass");
		String username=request.getParameter("username");
		try {
			users=usersDAO.getUsers(username);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String pass=users.getPassword();
		if (currentpass.equals(pass)) {
			if (newpass.equals(cofirmpass)) {
				users.setUserName(request.getParameter("username"));
				users.setPassword(request.getParameter("newpass"));
				usersDAO.updatePass(users);
				HttpSession session5 = request.getSession();
				if (users != null) {

					session5.setAttribute("updatePass", users);
					url = "/Login.jsp";
					request.setAttribute("/Login.jsp", "Tạo thành công người dùng");
				}
			}
		}
		else
		{
			url="/Doimatkhau.jsp";
			System.out.println("Mật khẩu hiện tại không đúng");
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
