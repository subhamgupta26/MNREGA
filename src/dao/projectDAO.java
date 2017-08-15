package dao;

import java.util.ArrayList;

import model.ProjectBean;

public interface projectDAO {
	
	public String save(ProjectBean pBean);
	
	public ArrayList<ProjectBean> displayProject();
	public ArrayList<ProjectBean> searchProject(String projectName);

	public ArrayList<ProjectBean> display();
}
