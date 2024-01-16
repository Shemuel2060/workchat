package com.arola.wc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReactControllerTest {
	
	@RequestMapping("/react-test")
	public String serveReact() {
		return "react-test";
	}

}
