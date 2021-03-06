package me.djyuning.blog.website.config;

import me.djyuning.blog.website.interceptor.CategoryInterceptor;
import me.djyuning.blog.website.interceptor.ParameterInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.*;

@Configuration
public class InterceptorConfig implements WebMvcConfigurer {

    @Autowired
    private ParameterInterceptor parameterInterceptor;

    @Autowired
    private CategoryInterceptor categoryInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        InterceptorRegistration categoryAddInterceptor = registry.addInterceptor(categoryInterceptor);

        InterceptorRegistration addInterceptor = registry.addInterceptor(parameterInterceptor);
        addInterceptor.excludePathPatterns("/static/**");
        addInterceptor.addPathPatterns("/**");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
    }
}
