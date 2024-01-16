package com.arola.wc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.arola.wc.api.Visitors;

@Controller
public class RegisterController {
	
	@RequestMapping("/register")
	public String register(@ModelAttribute("user") Visitors visitor) {
		return "register";
	}
	
	@RequestMapping("/processRegistration")
	public String handleRegistration(@ModelAttribute("user") Visitors visitor) {
		return "processedRegistration";
	}

}
