package com.arola.wc.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@EnableWebMvc
@Configuration
@ComponentScan(basePackages="com.arola.wc.controllers")
public class WorkchatWebAppConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**")
                .addResourceLocations("classpath:/static/");
    }
    
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
