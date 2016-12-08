package controller;

import dao.RoleDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Role;

/**
 *
 * @author Kelvin
 */
public class RoleServlet extends HttpServlet {

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
		Role role = new Role();
		switch (command) {
		case ("insertRole"):
			role.setRoleID(request.getParameter("roleid"));
			role.setRoleName(request.getParameter("rolename"));
			roleDAO.insertRole(role);
			if (role != null)
				response.sendRedirect("/ExamOnline/DSRole.jsp");
			else
				response.sendRedirect("/ExamOnline/Admin.jsp");
			break;
		}

	}

}
