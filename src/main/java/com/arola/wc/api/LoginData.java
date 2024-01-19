package com.arola.wc.api;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class LoginData {
	
	@NotNull(message="User name cannot be empty")
	@Size(min=3, max=25, message="Name should be 3-25 characters")
	private String name;
	
	
	@NotNull(message="User name cannot be empty")
	@Size(min=3, max=25, message="Name should be 3-25 characters")
	private String password;
	
	@NotNull(message="User name cannot be empty")
	@Size(min=3, max=25, message="Name should be 3-25 characters")
	private String userType;

	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}
	
	
	
	
	
	

}
