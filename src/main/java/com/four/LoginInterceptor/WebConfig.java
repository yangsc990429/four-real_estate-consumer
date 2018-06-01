package com.four.LoginInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import javax.servlet.http.HttpServletRequest;

@Configuration
public class WebConfig extends WebMvcConfigurerAdapter {
    public static String LOGIN_USER = "user";

    public WebConfig() {
        super();
    }

    //因为新加了拦截器，这里需要重新设置资源地址
    public void addResourceHandlers(ResourceHandlerRegistry registry, javax.servlet.http.HttpServletRequest request) {

        registry.addResourceHandler("/static/**").addResourceLocations(
                "classpath:/static/");
        registry.addResourceHandler("/templates/**").addResourceLocations(
                "classpath:/templates/");
        registry.addResourceHandler("/js/**").addResourceLocations(
                "classpath:/js/");
        registry.addResourceHandler("/css/**").addResourceLocations(
                "classpath:/css/");
        registry.addResourceHandler("/assets/**").addResourceLocations(
                "classpath:/assets/");
        registry.addResourceHandler("/bootstrap/**").addResourceLocations(
                "classpath:/bootstrap/");
        System.err.println("刘峰器");
        registry.addResourceHandler("/Fc/**").addResourceLocations(
                "classpath:/Fc/");
        registry.addResourceHandler("/Images/**").addResourceLocations(
                "classpath:/Images/");
        registry.addResourceHandler("/yangsc/Images/**").addResourceLocations(
                "classpath:/yangsc/Images/");
        super.addResourceHandlers(registry);

    }

    @Override
    public void configureDefaultServletHandling(
            DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }


    public void addInterceptors(InterceptorRegistry registry) {

        registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/**").excludePathPatterns("/lfq/addmokuai", "/yangsc/querymokuai", "/lfq/queryuser", "/lfq/querytree", "/js/**", "/yangsc/Images/**",
                "/Images/**", "/yangsc/Css/**","/ftmp_183_ma/**", "/Fc/**", "/yangsc/ditu.html", "/bootstrap/**", "/assets/**", "/css/**");
        super.addInterceptors(registry);
    }
}

