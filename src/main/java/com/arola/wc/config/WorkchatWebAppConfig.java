package com.arola.wc.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.arola.wc.formatters.PhoneNumberFormatter;

@EnableWebMvc
@Configuration
@ComponentScan(basePackages="com.arola.wc.controllers")
public class WorkchatWebAppConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**")
                .addResourceLocations("classpath:/static/")
                .setCachePeriod(0);
    }
    
    @Override
    public void addFormatters(FormatterRegistry registry) {
    	System.out.println("registered phone number formatter");
    	registry.addFormatter(new PhoneNumberFormatter());
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
