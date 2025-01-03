package com.techstreet.Entities;

public class UserHelp {
	
	private String name;
	private String email;
	private Long phone;
	private String message;
	
	public UserHelp() {}
	
	public UserHelp(String name, String email, Long phone, String message) {
		this.name=name;
		this.email=email;
		this.phone=phone;
		this.message=message;
	}
	
	public void setName(String name) {
		this.name=name;
	}
	public void setEmail(String email) {
		this.email=email;
	}
	public void setPhone(Long phone) {
		this.phone=phone;
	}
	public void setMessage(String message) {
		this.message=message;
	}
	
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public Long getPhone() {
		return phone;
	}
	public String getMessage() {
		return message;
	}

}
