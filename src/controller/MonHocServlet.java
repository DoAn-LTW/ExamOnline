package controller;

import dao.MonhocDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.MonHoc;

/**
 *
 * @author Kelvin
 */
public class MonHocServlet extends HttpServlet {

	MonhocDAO monhocDAO = new MonhocDAO();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String url = "";
		MonHoc monhoc = new MonHoc();

		monhoc.setMaMH(request.getParameter("mamh"));
		monhoc.setTenMH(request.getParameter("tenmh"));
		monhocDAO.insertMH(monhoc);
		HttpSession session = request.getSession();
		session.setAttribute("insertMH", monhoc);
		url = "/NguoiQTNHCH.jsp";
		request.setAttribute("/NguoiQTNHCH.jsp", "Tạo thành công môn học");
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}
}
