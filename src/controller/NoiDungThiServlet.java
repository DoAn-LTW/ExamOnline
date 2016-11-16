package controller;

import dao.NoiDungThiDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.MonHoc;
import model.NoiDung;

/**
 *
 * @author Kelvin
 */
public class NoiDungThiServlet extends HttpServlet {

    

    NoiDungThiDAO noiDungThiDAO=new NoiDungThiDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String command=request.getParameter("command");
        String url="";
       
        NoiDung noiDungThi =new NoiDung();
        switch(command){
            case "insertND":
                noiDungThi.setMaND(request.getParameter("mand"));
                noiDungThi.setTenND(request.getParameter("tennd"));
                noiDungThi.setMaMH(request.getParameter("mamh"));
            try {
                noiDungThiDAO.insertNDThi(noiDungThi);
            } catch (SQLException ex) {
                Logger.getLogger(NoiDungThiServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
                HttpSession session=request.getSession();
                if(noiDungThi!=null)
                {
                     session.setAttribute("insertNoidung", noiDungThi);
                     url="/NguoiQTNHCH.jsp";
                     request.setAttribute("/NguoiQTNHCH.jsp", "Tạo thành công nội dung môn học");
                }
               
                break;
        }
        RequestDispatcher rd=getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
