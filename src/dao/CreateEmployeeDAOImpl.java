package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import factory.ConnectionFactory;
import model.EmployeeBean;

public class CreateEmployeeDAOImpl implements CreateEmployeeDAO {

	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	private String dbStatus;

	@Override
	public String saveEmployee(EmployeeBean eBean) {
		try {
			con = (Connection) ConnectionFactory.getInstance().getConnection();
			String sql = "INSERT INTO employeeDetail (firstName, lastName,phone,age, state, district,village,address,adharNo,bankName,accNo,attendance) values (?, ?, ?, ?,?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, eBean.getFirstName());
			ps.setString(2, eBean.getLastName());
			ps.setString(3, eBean.getPhone());
			ps.setString(4, eBean.getAge());
			ps.setString(5, eBean.getState());
			ps.setString(6, eBean.getDistrict());
			ps.setString(7, eBean.getVillage());
			ps.setString(8, eBean.getAddress());
			ps.setString(9, eBean.getAdharNo());
			ps.setString(10, eBean.getBankName());
			ps.setString(11, eBean.getAccNo());
			ps.setString(12,"0");
			int row = ps.executeUpdate();
			if (row > 0) {
				dbStatus = "Employee Created";
			} else {
				dbStatus = "Creation of Employee Failed";
			}
		} catch (SQLException ex) {
			dbStatus = "ERROR: " + ex.getMessage();
			ex.printStackTrace();
		} catch (Exception ex) {
			dbStatus = "ERROR: " + ex.getMessage();
			ex.printStackTrace();
		}
		return dbStatus;

	}

	@Override
	public List<EmployeeBean> displayEmployee() {
		con = ConnectionFactory.getInstance().getConnection();
		List<EmployeeBean> eList = new ArrayList<EmployeeBean>();
		try {
			ps = con.prepareStatement("select * from employeeDetail");
			rs = ps.executeQuery();
			while (rs.next()) {
				EmployeeBean euBean = new EmployeeBean();
				euBean.setRecordNo(rs.getInt(1));
				euBean.setFirstName(rs.getString(2));
				euBean.setLastName(rs.getString(3));
				euBean.setPhone(rs.getString(4));
				euBean.setAge(rs.getString(5));
				euBean.setState(rs.getString(6));
				euBean.setDistrict(rs.getString(7));
				euBean.setVillage(rs.getString(8));
				euBean.setAddress(rs.getString(9));
				euBean.setAdharNo(rs.getString(10));
				euBean.setBankName(rs.getString(11));
				euBean.setAccNo(rs.getString(12));
				euBean.setAttendance(rs.getInt(13));;
				euBean.setProject(rs.getString(14));
				eList.add(euBean);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return eList;
	}

	public String addProject(String projectName,String employeeid) {
		con=ConnectionFactory.getInstance().getConnection();
		
		try{
		String sql="UPDATE employeeDetail set project=? where recordNo=?;";
		ps=con.prepareStatement(sql);
		ps.setString(1, projectName);
		ps.setString(2, employeeid);
		int temp=ps.executeUpdate();
		if(temp>0){
			dbStatus="Employee Assigned";
		}
		else{
			dbStatus="Something went wrong";
		}
		}
		catch(Exception e){
			
			e.printStackTrace();
		}
		return dbStatus;
	}


}
