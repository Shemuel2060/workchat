package com.arola.wc.api;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class RegistrationData {

	// field names SHOULD match those used in the input tags
	
	private UserData userData; // access name, email and phone
	
	private String userType;	
	

	@NotNull(message="Password cannot be empty!")
	@Size(min=8, max=50, message="Password should be 8-50 characters")
	private String password;
	
//	@NotNull(message="Password cannot be empty")
//	@Size(min=8, max=50, message="Password should be 8-50 characters")
//	private String confirmPass;

	
	@AssertTrue(message="Please agree to the terms and conditions")
	private boolean termsAndconditions;

	public UserData getUserData() {
		return userData;
	}

	public void setUserData(UserData userData) {
		this.userData = userData;
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

	public boolean isTermsAndconditions() {
		return termsAndconditions;
	}

	public void setTermsAndconditions(boolean termsAndconditions) {
		this.termsAndconditions = termsAndconditions;
	}

}
