package com.techstreet.Entities;

public class Student 
{
	 private String name;
	 private String email;
	 private Long phone;
	 private String username;
	 private String password;
	 
	 public Student() {}
	 
	 public Student(String name, String email, Long phone, String username,String password)
	 {
		 this.name=name;
		 this.email=email;
		 this.phone=phone;
		 this.username=username;
		 this.password=password;
	 }

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Long getPhone() {
		return phone;
	}

	public void setPhone(Long phone) {
		this.phone = phone;
	}

	public String getUserName() {
		return username;
	}

	public void setUserName(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
