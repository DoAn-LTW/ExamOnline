package controller;

import dao.UsersDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kelvin
 */
public class CheckEmailServlet extends HttpServlet {

    UsersDAO usersDAO=new UsersDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String username=request.getParameter("username");
      if (usersDAO.check(request.getParameter("username"))) {
    
          response.getWriter().write("<img src=\"assets/Images/not-available.png\" /><span style=\"color:red;margin-left: 10px\">Tên đăng nhập đã tồn tại</span>");
      } else 
          if(username.equals("")) 
              return;
          else
            response.getWriter().write("<img src=\"assets/Images/available.png\" /><span style=\"color:green;margin-left: 10px\">Bạn có thể sử dụng tên đăng nhập này</span>");
      }
    }
