package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBconnect;
import model.CauHoi;

public class CauHoiDAO {
	
	// insert cauhoi
	public boolean insertCauHoi(CauHoi ch){
		Connection con=DBconnect.getConnecttion();
		String sql="insert into cauhoi values(?,?,?,?,?,?,?,?,?,?)";
		try{
			PreparedStatement ps=con.prepareCall(sql);
			ps.setString(1, ch.getMaCH());
			ps.setString(2, ch.getNoiDung());
			ps.setString(3, ch.getDapAnA());
			ps.setString(4, ch.getDapAnB());
			ps.setString(5, ch.getDapAnC());
			ps.setString(6, ch.getDapAnD());
			ps.setString(7, ch.getDapAn());
			ps.setString(8, ch.getDiem());
			ps.setString(9, ch.getMaMH());
			ps.setString(10, ch.getMaND());
			ps.executeUpdate();
			return true;
		}catch(SQLException e){
			Logger.getLogger(CauHoiDAO.class.getName()).log(Level.SEVERE,null,e);
		}
		return false;
	}
	
}
