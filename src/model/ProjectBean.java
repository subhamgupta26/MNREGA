package model;

import java.sql.Date;

public class ProjectBean {
	
	private String projectName;
	private int maxEmployee;
	private String purpose;
	private int duration;
	private String assigned_to;
	private int moneyAllocated;
	private Date dateAllocated;
	private String district;
	private String village;
	
	
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getVillage() {
		return village;
	}
	public void setVillage(String village) {
		this.village = village;
	}
	public ProjectBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public int getMaxEmployee() {
		return maxEmployee;
	}
	public void setMaxEmployee(int maxEmployee) {
		this.maxEmployee = maxEmployee;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public String getAssigned_to() {
		return assigned_to;
	}
	public void setAssigned_to(String assigned_to) {
		this.assigned_to = assigned_to;
	}
	public int getMoneyAllocated() {
		return moneyAllocated;
	}
	public void setMoneyAllocated(int moneyAllocated) {
		this.moneyAllocated = moneyAllocated;
	}
	public Date getDateAllocated() {
		return dateAllocated;
	}
	public void setDateAllocated(Date dateAllocated) {
		this.dateAllocated = dateAllocated;
	}
	
	

}
