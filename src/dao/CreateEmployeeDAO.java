package dao;

import java.util.List;

import model.EmployeeBean;

public interface CreateEmployeeDAO {
	public String saveEmployee(EmployeeBean eBean);
	public List<EmployeeBean> displayEmployee();
	
	public String addProject(String projectName,String employeeid);
}
