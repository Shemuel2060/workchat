package com.arola.wc.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@EnableWebMvc
@Configuration
@ComponentScan(basePackages="com.arola.wc.controllers")
public class WorkchatWebAppConfig {
	
	// have all beans here
	
		// the ViewResolver bean
		
		@Bean
		public InternalResourceViewResolver viewResolver() {
			InternalResourceViewResolver resolver = new InternalResourceViewResolver();
			
			resolver.setPrefix("WEB-INF/views/");
			resolver.setSuffix(".jsp");		
			
			return resolver;
		}
		
		

}
