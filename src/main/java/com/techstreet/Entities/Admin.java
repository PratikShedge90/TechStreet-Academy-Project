package com.techstreet.Entities;

public class Admin {
	
	private String username;
	private String password;
	
	public Admin() {}
	
	public Admin(String username,String password) {
		this.username=username;
		this.password=password;
	}
	
	public void setUserName(String username) {
		this.username=username;
	}
	
	public String getUserName() {
		return username;
	}
	
	public void setPassword(String password) {
		this.password=password;
	}
	
	public String getPassword() {
		return password;
	}

}
