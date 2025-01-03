package com.techstreet.Entities;

public class StatusBean {
	
	private String AdminName;
	private String AdminEmail;
	private boolean Status;
	
	public StatusBean() {}
	
	public StatusBean(String adminName, String adminEmail, boolean status) 
	{
		AdminName = adminName;
		AdminEmail = adminEmail;
		Status = status;
	}

	public String getAdminName() {
		return AdminName;
	}

	public void setAdminName(String adminName) {
		AdminName = adminName;
	}

	public String getAdminEmail() {
		return AdminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		AdminEmail = adminEmail;
	}

	public boolean isStatus() {
		return Status;
	}

	public  StatusBean(boolean status) {
		Status = status;
	}
	
	

}
