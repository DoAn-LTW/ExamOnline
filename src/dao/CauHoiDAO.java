package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connect.DBconnect;
import model.CauHoi;
import model.Users;

public class CauHoiDAO {
	
	// insert cauhoi
	public boolean insertCauHoi(CauHoi ch){
		Connection con=DBconnect.getConnecttion();
		String sql="insert into cauhoi values(?,?,?,?,?,?,?,?,?)";
		try{
			PreparedStatement ps=con.prepareCall(sql);
			ps.setString(1, ch.getMaCH());
			ps.setString(2, ch.getNoiDung());
			ps.setString(3, ch.getDapAnA());
			ps.setString(4, ch.getDapAnB());
			ps.setString(5, ch.getDapAnC());
			ps.setString(6, ch.getDapAnD());
			ps.setString(7, ch.getDapAn());
			ps.setString(8, ch.getMaMH());
			ps.setString(9, ch.getMaND());
			ps.executeUpdate();
			return true;
		}catch(SQLException e){
			Logger.getLogger(CauHoiDAO.class.getName()).log(Level.SEVERE,null,e);
		}
		return false;
	}
	public ArrayList<CauHoi> getChWithMaMhMaND(String maMH, String maND) throws SQLException{
		Connection con=DBconnect.getConnecttion();
		ArrayList<CauHoi> list=new ArrayList<>();
		String sql="select * from cauhoi where MaMH='"+maMH+"' and MaND='"+maND+"'";
		PreparedStatement ps=con.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
        while(rs.next()){
        	CauHoi cauHoi=new CauHoi();
        	cauHoi.setMaCH(rs.getString("MaCH"));
        	cauHoi.setNoiDung(rs.getString("NoiDung"));
        	cauHoi.setDapAnA(rs.getString("PhuongAnA"));
        	cauHoi.setDapAnB(rs.getString("PhuongAnB"));
        	cauHoi.setDapAnC(rs.getString("PhuongAnC"));
        	cauHoi.setDapAnD(rs.getString("PhuongAnD"));
        	cauHoi.setDapAn(rs.getString("DapAn"));
            list.add(cauHoi);
        }
        return list;
	}
	public ArrayList<CauHoi> searchCH(String tenCH) throws SQLException{
		Connection con=DBconnect.getConnecttion();
		ArrayList<CauHoi> list=new ArrayList<>();
		String sql="select * from cauhoi where NoiDung='"+tenCH+"'";
		PreparedStatement ps=con.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
        while(rs.next()){
        	CauHoi cauHoi=new CauHoi();
        	cauHoi.setMaCH(rs.getString("MaCH"));
        	cauHoi.setNoiDung(rs.getString("NoiDung"));
        	cauHoi.setDapAnA(rs.getString("PhuongAnA"));
        	cauHoi.setDapAnB(rs.getString("PhuongAnB"));
        	cauHoi.setDapAnC(rs.getString("PhuongAnC"));
        	cauHoi.setDapAnD(rs.getString("PhuongAnD"));
        	cauHoi.setDapAn(rs.getString("DapAn"));
            list.add(cauHoi);
        }
        return list;
	}
	//random cau hoi
	public ArrayList<CauHoi> randomCH(String maMH,String maND, String SL) throws SQLException{
		Connection con=DBconnect.getConnecttion();
		ArrayList<CauHoi> list=new ArrayList<>();
		String sql="select MaCH from cauhoi where MaMH='"+maMH+"' and MaND='"+maND+"' ORDER BY RAND() LIMIT "+SL+"";
		PreparedStatement ps=con.prepareCall(sql);
		ResultSet rs=ps.executeQuery();
        while(rs.next()){
        	CauHoi cauHoi=new CauHoi();
        	cauHoi.setMaCH(rs.getString("MaCH"));
            list.add(cauHoi);
        }
        return list;
		
	}
	 public static void main(String[] args) throws SQLException {
	        CauHoiDAO cauHoiDAO=new CauHoiDAO();
	        for(CauHoi ch:cauHoiDAO.randomCH("LTW","Servlet","5"))
	        	System.out.println(ch.getMaCH());       
	    }
}
