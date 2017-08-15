package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import factory.ConnectionFactory;
import model.ProjectBean;

public class ProjectDaoImpl implements projectDAO {
	Connection con;
	PreparedStatement pst;
	String dbStatus;
	ResultSet rs;
	

	@Override
	public String save(ProjectBean pBean) {
		
		
		try{
		con=ConnectionFactory.getInstance().getConnection();
		String sql;
		sql="insert into project values(?,?,?,?,?,?,?,?,?);";
		pst=con.prepareStatement(sql);
		pst.setString(1, pBean.getProjectName());
		pst.setInt(2, pBean.getMaxEmployee());
		pst.setString(3, pBean.getPurpose());
		pst.setInt(4, pBean.getDuration());
		pst.setString(5, pBean.getAssigned_to());
		pst.setInt(6, pBean.getMoneyAllocated());
		pst.setString(7, pBean.getDistrict());
		pst.setString(8, pBean.getVillage());
		pst.setDate(9, pBean.getDateAllocated());
		
		int row=pst.executeUpdate();
		if(row>0){
			dbStatus="Project Created ";
		}
		else
		{
			dbStatus="Oops,Something Went Wrong :(";
		}
		
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return dbStatus;
	}

	@Override
	public ArrayList<ProjectBean> displayProject() {
		
		
		
		ArrayList<ProjectBean> pList=new ArrayList<ProjectBean>();
		try{
		
		con=ConnectionFactory.getInstance().getConnection();
		String sql="select project_name from project;";
		pst=con.prepareStatement(sql);
	
		rs=pst.executeQuery();
		while(rs.next()){
			ProjectBean puBean=new ProjectBean();
			puBean.setProjectName(rs.getString(1));
			pList.add(puBean);
			
			
		}
		
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		return pList;
	}

	@Override
	public ArrayList<ProjectBean> searchProject(String projectName) {
		
		ArrayList<ProjectBean> pList=new ArrayList<ProjectBean>();
		try{
		
		con=ConnectionFactory.getInstance().getConnection();
		String sql="select * from project where project_name=?;";
		pst=con.prepareStatement(sql);
		pst.setString(1, projectName);
		
	
		rs=pst.executeQuery();
		while(rs.next()){
			ProjectBean puBean=new ProjectBean();
			puBean.setProjectName(rs.getString(1));
			puBean.setMaxEmployee(rs.getInt(2));
			puBean.setPurpose(rs.getString(3));
			puBean.setDuration(rs.getInt(4));
			puBean.setAssigned_to(rs.getString(5));
			puBean.setMoneyAllocated(rs.getInt(6));
			puBean.setDistrict(rs.getString(7));
			puBean.setVillage(rs.getString(8));
			puBean.setDateAllocated(Date.valueOf(rs.getString(9)));
			
			pList.add(puBean);
			
			
		}
		
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		return pList;
	}
	
public ArrayList<ProjectBean> display() {
		
		
		
		ArrayList<ProjectBean> pList=new ArrayList<ProjectBean>();
		try{
		
		con=ConnectionFactory.getInstance().getConnection();
		String sql="select * from project;";
		pst=con.prepareStatement(sql);
	
		rs=pst.executeQuery();
		while(rs.next()){
			ProjectBean puBean=new ProjectBean();
			puBean.setProjectName(rs.getString(1));
			puBean.setMaxEmployee(rs.getInt(2));
			puBean.setPurpose(rs.getString(3));
			puBean.setDuration(rs.getInt(4));
			puBean.setAssigned_to(rs.getString(5));
			puBean.setMoneyAllocated(rs.getInt(6));
			puBean.setDistrict(rs.getString(7));
			puBean.setVillage(rs.getString(8));
			
			pList.add(puBean);
			
			
		}
		
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		return pList;
	}

	
	
	

}
