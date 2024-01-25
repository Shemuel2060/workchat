package com.arola.wc.api;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * Contains basic user data such as name, email, and a
 * Phone object.
 */
public class UserData {
	
	@NotNull(message="Name cannot be empty")
	@Size(min=3, max=25, message="Name should be 3-25 characters")
	private String name;
	

	@NotNull(message="Email cannot be empty")
	@Size(min=3, max=100, message="Email should be 3-100 characters")
	private String email;
	
	@NotNull(message="Phone cannot be empty")
	@Size(min=3, max=100, message="Phone should be 3-100 characters")
	private Phone phone;

	
	
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

	public Phone getPhone() {
		return phone;
	}

	public void setPhone(Phone phone) {
		this.phone = phone;
	}
	
	
	
	

}
