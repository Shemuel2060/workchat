package com.arola.wc.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.arola.wc.api.RegistrationData;

@Controller
public class RegisterController {
	
	@RequestMapping("/register")
	public String register(@ModelAttribute("user") RegistrationData user) {
		return "register";
	}
	
	@RequestMapping("/processRegistration")
	public String handleRegistration(@Valid @ModelAttribute("user") 
	RegistrationData user,	BindingResult result) {
		if(!user.isTermsAndconditions()|| result.hasErrors()) {
			return "register";
		}
		return "processedRegistration";
		
	}

}
