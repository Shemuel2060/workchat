package com.arola.wc.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.arola.wc.api.Visitors;

@Controller
public class LoginController {
	
	@RequestMapping("/showLoginForm")
	public String showLoginForm(@ModelAttribute("user") Visitors user) {		
		
		return "login";
	}
	
	// handler for processing form
	
	@RequestMapping("/processLoginForm")
	public String processContactForm( @Valid @ModelAttribute("user") 
	Visitors user, BindingResult result) { 
		
		if(result.hasErrors()) {
			
			return "login"; // stay on login page.
		}
				
		return "processedLogin-form";
	}


}
