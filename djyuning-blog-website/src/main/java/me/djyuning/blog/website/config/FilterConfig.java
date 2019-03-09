package me.djyuning.blog.website.config;

import me.djyuning.blog.website.filter.LogFilter;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class FilterConfig {

    @Bean
    public FilterRegistrationBean registerFilter() {
        FilterRegistrationBean registration = new FilterRegistrationBean();
        registration.setFilter(new LogFilter());
        registration.addUrlPatterns("/*");
        registration.setName("LogFilter");
        registration.setOrder(1);
        return registration;
    }

}
