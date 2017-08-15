package model;

public class AttendanceBean {
	int recordNo,attendance;
	public int getAttendance() {
		return attendance;
	}

	public void setAttendance(int attendance) {
		this.attendance = attendance;
	}

	String firstName, lastName;

	public AttendanceBean() {

	}

	public int getRecordNo() {
		return recordNo;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setRecordNo(int recordNo) {
		this.recordNo = recordNo;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

}
