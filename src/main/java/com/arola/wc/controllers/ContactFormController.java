package com.arola.wc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.arola.wc.api.Visitors;

@Controller
public class ContactFormController {
	
	@RequestMapping("/showContactForm")
	public String showContactForm(@ModelAttribute("user") Visitors visitor) {		
		
		return "contact-form";
	}
	
	// handler for processing form
	
	@RequestMapping("/processContactForm")
	public String processContactForm(@ModelAttribute("visitor") Visitors visitor) { 
		
		// access the attribute names in the view page to get the inputs and display them
		
		return "processedContact-form";
	}

}