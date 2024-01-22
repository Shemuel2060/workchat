package com.arola.wc.api;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class LoginData {
	

	@NotNull(message="Name cannot be empty")
	private UserData userData; // access user name
	
	@NotNull(message="Password cannot be empty")
	private RegistrationData registrationData; // access password
	
	@NotNull(message="Category cannot be empty")
	@Size(min=3, max=25, message="Name should be 3-25 characters")
	private String userType;



	public UserData getUserData() {
		return userData;
	}

	public void setUserData(UserData userData) {
		this.userData = userData;
	}
	
	
	public RegistrationData getRegistrationData() {
		return registrationData;
	}

	public void setRegistrationData(RegistrationData registrationData) {
		this.registrationData = registrationData;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}
	
	
	
	
	
	

}
