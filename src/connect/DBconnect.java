package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Kelvin
 */
public class DBconnect {
    public static Connection getConnecttion() {
      Connection cons = null;
         try {
            Class.forName("com.mysql.jdbc.Driver");
            cons = DriverManager.getConnection(
            		"jdbc:mysql://localhost:3306/examonline", "root", "14110143");
            //"jdbc:mysql://node177596-examonline.jelastic.servint.net/examonline", "root", "ILAqxx87348");
            System.out.println("Ket noi thanh cong");
            
         } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.out.println("Ket noi khong thanh cong");
         }
         return cons;
    }
    public static void main(String[] args) {
         System.out.println(getConnecttion());
    }
}
