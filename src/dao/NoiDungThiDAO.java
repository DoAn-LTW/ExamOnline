package dao;

import connect.DBconnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.NoiDung;

/**
 *
 * @author Kelvin
 */
public class NoiDungThiDAO {
    
    public boolean insertNDThi(NoiDung nd) throws SQLException{
       Connection connect=DBconnect.getConnecttion();
        String sql="Insert into noidung values (?,?,?)";
        try {
            PreparedStatement ps=connect.prepareCall(sql);
            ps.setString(1,nd.getMaND());
            ps.setString(2,nd.getTenND());
            ps.setString(3,nd.getMaMH());
            ps.executeUpdate();
            return true;
        } catch (SQLException e) {
             Logger.getLogger(NoiDungThiDAO.class.getName()).log(Level.SEVERE,null,e);
        }
        return false;
    }
    public ArrayList<NoiDung> getListND() throws SQLException{
        Connection con=DBconnect.getConnecttion();
        String sql="select MaND from noidung";
        PreparedStatement ps=con.prepareCall(sql);
        ResultSet rs=ps.executeQuery();
        ArrayList<NoiDung> list=new ArrayList<>();
        while(rs.next()){
            NoiDung noiDung=new NoiDung();
            noiDung.setMaND(rs.getString("MaND"));
            list.add(noiDung);
        }
        return list;
    }
    public static void main(String[] args) {
        
    }
}
