package me.djyuning.blog.website;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"me.djyuning.blog"})
@ServletComponentScan("me.djyuning.blog.website.filter")
public class DjyuningBlogWebsiteApplication {

    public static void main(String[] args) {
        SpringApplication.run(DjyuningBlogWebsiteApplication.class, args);
    }

}
