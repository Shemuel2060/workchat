package com.arola.wc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.arola.wc.api.Visitors;

@Controller
public class LoginController {
	
	@RequestMapping("/showLoginForm")
	public String showLoginForm(@ModelAttribute("user") Visitors visitor) {		
		
		return "login";
	}
	
	// handler for processing form
	
	@RequestMapping("/processLoginForm")
	public String processContactForm(@ModelAttribute("visitor") Visitors visitor) { 
		
		// access the attribute names in the view page to get the inputs and display them
		
		return "processedLogin-form";
	}


}
