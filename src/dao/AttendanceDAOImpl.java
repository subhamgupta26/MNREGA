package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.AttendanceBean;
import factory.ConnectionFactory;

public class AttendanceDAOImpl implements AttendanceDAO{
	
	private Connection con;
	private PreparedStatement pst;
	private ResultSet rs1;
	private String dbStatus;

	ArrayList alist = new ArrayList();
	@Override
	public ArrayList displayEmployee(String project) {
		con = (Connection) ConnectionFactory.getInstance().getConnection();
		ArrayList alist = new ArrayList();
		try {
			pst = con.prepareStatement("select * from employeeDetail where project=?");
			pst.setString(1, project);
			rs1 = pst.executeQuery();
			while (rs1.next()) {
				AttendanceBean aBean = new AttendanceBean();
				aBean.setRecordNo(rs1.getInt(1));
				aBean.setFirstName(rs1.getString(2));
				aBean.setLastName(rs1.getString(3));
				alist.add(aBean);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return alist;
	}

	@Override
	public String updateAttendance(int recordNo) {
		con = (Connection) ConnectionFactory.getInstance().getConnection();
		try {
			pst = con.prepareStatement("select * from employeeDetail where recordNo=?");
			pst.setInt(1, recordNo);
			rs1 = pst.executeQuery();
			if(rs1.next()){
				int at = Integer.parseInt(rs1.getString(13));
				at = at+1;
				pst = con.prepareStatement("update employeeDetail set attendance= ? where recordNo=?");
				pst.setString(1,Integer.toString(at));
				pst.setInt(2,recordNo);
				int i =pst.executeUpdate();
				if (i > 0)
					dbStatus = "Update Succesful";
				else {
					dbStatus = "Update Failed";
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(dbStatus);
		return dbStatus;
	}

}
