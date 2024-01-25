package com.arola.wc.formatters;

import java.text.ParseException;
import java.util.Locale;
import java.util.regex.Pattern;

import org.springframework.format.Formatter;

import com.arola.wc.api.Phone;

public class PhoneNumberFormatter implements Formatter<Phone> {

	@Override
	public String print(Phone object, Locale locale) {
		// get data from DB - for instance
		
		// convert a particular data object to String to fill the fields
		return null;
	}

	@Override
	public Phone parse(String phoneText, Locale locale) throws ParseException {
		System.out.println("In the parse method: convert string input to "
				+ "Phone number object");
		
		/*split string number into an array of two numbers at -
		 * TODO: Better implementation is to use regex to allow several
		 * acceptable number formats with country codes.
		 * */ 
		String[] fullPhoneNumber = phoneText.split("-");
		
		// some error handling
		int index = phoneText.indexOf("-");
		Phone phone = new Phone();
		if(index==-1||phoneText.startsWith("-")) { // no "-" in the phone number input...
			phone.setCountryCode("+256");
			if(phoneText.startsWith("-")) {
				phone.setNumber(fullPhoneNumber[1]);
			}else {
				phone.setNumber(fullPhoneNumber[0]);
			}
		}else if(phoneText.endsWith("-")) {
			phone.setCountryCode("+256");
			phone.setNumber(fullPhoneNumber[0]);			
		}else{
			phone.setCountryCode(fullPhoneNumber[0]);
			phone.setNumber(fullPhoneNumber[1]);
			
		}
		
		return phone;
		
		
	}

}
