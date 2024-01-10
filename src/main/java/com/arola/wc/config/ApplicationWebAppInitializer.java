package com.arola.wc.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

public class ApplicationWebAppInitializer implements WebApplicationInitializer, WebMvcConfigurer {

	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		// create an object of the applicationContext class to use by the DS
		AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();

		// register the configuration class with the web config context
		context.register(WorkchatWebAppConfig.class);

		// create a dispatcher servlet
		DispatcherServlet dServlet = new DispatcherServlet(context);

		// register it with the servletContext object
		ServletRegistration.Dynamic registeredServlet = servletContext.addServlet("arolaworkchat", dServlet);

		// add more configurations to it, load-on-startup and mapping
		registeredServlet.setLoadOnStartup(1);
		registeredServlet.addMapping("/");

	}
	
	 @Override
	 public void addViewControllers(ViewControllerRegistry registry) {
	        // Maps the root URL ("/") to the "welcome" view name
	        registry.addViewController("/").setViewName("home");
	    }

}
