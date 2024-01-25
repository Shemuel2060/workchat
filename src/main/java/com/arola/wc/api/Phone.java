package com.arola.wc.api;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * Contains the fields of the phone 
 */
public class Phone {
	
	@NotNull
	@Size(min = 4, max = 6)
	private String countryCode;
	
	@NotNull(message="Phone can't be null")
	@Size(min = 10, max = 15)
	private String number;
	

	public String getCountryCode() {
		return countryCode;
	}

	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	@Override
	public String toString() {
		return countryCode + "-" + number; // ensure this format with regex.
	}
	
	
	
	

}
