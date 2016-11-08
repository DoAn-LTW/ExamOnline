package controller;

import dao.RoleDAO;
import dao.UsersDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Users;

/**
 *
 * @author Kelvin
 */
public class UserServlet extends HttpServlet {

	/**
	 * 
	 */
	UsersDAO usersDAO = new UsersDAO();
	RoleDAO roleDAO = new RoleDAO();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		String url = "";
		Users users = new Users();
		switch (command) {
		case "insert":
			users.setUserName(request.getParameter("username"));
			users.setPassword(request.getParameter("password"));
			users.setFullname(request.getParameter("fullname"));
			users.setEmail(request.getParameter("email"));
			users.setRoleId(request.getParameter("Role"));
			usersDAO.insertUsers(users);
			HttpSession session = request.getSession();
			if (users != null) {
				session.setAttribute("insertUsers", users);
				url = "/DSTaiKhoan.jsp";
				request.setAttribute("/DSTaiKhoan.jsp", "Tạo thành công người dùng");
			}

			break;
		case "login":
			users = usersDAO.login(request.getParameter("username"), request.getParameter("password"),
					request.getParameter("Role"));
			String roles = request.getParameter("Role");

			if (users != null) {
				if (roles.equals("Admin")) {
					HttpSession session1 = request.getSession();
					// String role=request.getParameter("Role");
					session1.setAttribute("userAdmin", users);
					url = "/Admin.jsp";
					request.setAttribute("/Admin.jsp", "Đăng nhập thành công");
				}
				if (roles.equals("QLNHCH")) {
					HttpSession session1 = request.getSession();
					// String role=request.getParameter("Role");
					session1.setAttribute("userNHCH", users);
					url = "/NguoiQTNHCH-ThemCH.jsp";
					request.setAttribute("/NguoiQTNHCH-ThemCH.jsp", "Đăng nhập thành công");
				}
				if (roles.equals("QLD")) {
					HttpSession session1 = request.getSession();
					// String role=request.getParameter("Role");
					session1.setAttribute("userQLDE", users);
					url = "/NguoiRaDe-QLD.jsp";
					request.setAttribute("/NguoiRaDe-QLD.jsp", "Đăng nhập thành công");
				}
				if (roles.equals("QLKT")) {
					HttpSession session1 = request.getSession();
					// String role=request.getParameter("Role");
					session1.setAttribute("userQLKT", users);
					url = "/NguoiQLKT.jsp";
					request.setAttribute("/NguoiQLKT.jsp", "Đăng nhập thành công");
				}
				if (roles.equals("SV")) {
					HttpSession session1 = request.getSession();
					// String role=request.getParameter("Role");
					session1.setAttribute("userSV", users);
					url = "/SinhVien.jsp";
					request.setAttribute("/SinhVien.jsp", "Đăng nhập thành công");
				}
			} else {

				url = "/error.jsp";
				request.setAttribute("/error.jsp", "Đăng nhập thất bại");
			}
			break;
		case "updateProfile":
			users.setUserName(request.getParameter("UserName"));
			users.setFullname(request.getParameter("fullname"));
			users.setGender(request.getParameter("sex"));
			users.setBirthday(request.getParameter("birthday"));
			users.setNumberPhone(request.getParameter("numberphone"));
			users.setAddress(request.getParameter("address"));
			users.setEmail(request.getParameter("email"));

			try {
				usersDAO.updateUsers(users);
			} catch (SQLException ex) {
				Logger.getLogger(UserServlet.class.getName()).log(Level.SEVERE, null, ex);
			}

			String username = request.getParameter("UserName");
			HttpSession session2 = request.getSession();
			if (users != null) {
				session2.setAttribute("updateProfile", users);
				url = "/Profile.jsp?UserName=" + username;
				request.setAttribute("/Profile.jsp?UserName=" + username, "Tạo thành công người dùng");

			}

			break;
		}
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
