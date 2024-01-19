package com.arola.wc.api;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class RegistrationData {

	// field names SHOULD match those used in the input tags

	@NotNull(message="User name cannot be empty")
	@Size(min=3, max=25, message="Name should be 3-25 characters")
	private String name;
	
	@NotNull(message="Email cannot be empty")
	@Size(min=3, max=25, message="Email should be 3-25 characters")
	private String email;
	
	private String message;

	@NotNull(message="Password cannot be empty!")
	@Size(min=8, max=50, message="Password should be 8-50 characters")
	private String password;
	
	@NotNull(message="Password cannot be empty")
	@Size(min=8, max=50, message="Password should be 8-50 characters")
	private String confirmPass;

	private String userType;
	
	@AssertTrue(message="Please agree to the terms and conditions")
	private boolean termsAndconditions;

	// getters and setters
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

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPass() {
		return confirmPass;
	}

	public void setConfirmPass(String confirmPass) {
		this.confirmPass = confirmPass;
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
