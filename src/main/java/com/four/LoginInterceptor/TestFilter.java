/*

package com.four.LoginInterceptor;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import com.four.entity.User;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;
@Component
@WebFilter(value ={"/yangsc/*","/lfq/*"}, filterName = "TestFilter")
public class TestFilter implements Filter {
    protected static List<Pattern> patterns = new ArrayList<Pattern>();
    @Override
    public void init(FilterConfig arg0) throws ServletException {
        System.out.println("过滤器初始化");
    }
   */
/* @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
      *//*
*/
/*  Integer zt = 0;
        HttpServletRequest httpRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpResponse = (HttpServletResponse) servletResponse;
        System.err.println(httpRequest.getSession().getAttribute("user"));*//*
*/
/*

    }*//*

   public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)throws ServletException, IOException {
       HttpServletRequest request = (HttpServletRequest)servletRequest;
       HttpServletResponse response = (HttpServletResponse)servletResponse;
       String currentURL = request.getRequestURI();
       String ctxPath = request.getContextPath();
       //除掉项目名称时访问页面当前路径
       String targetURL = currentURL.substring(ctxPath.length());
       HttpSession session = request.getSession(false);
       String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ ctxPath;
       String type = request.getHeader("X-Requested-With")==null?"":request.getHeader("X-Requested-With");// XMLHttpRequest

       if (currentURL.endsWith(".js") || currentURL.endsWith(".css") || currentURL.endsWith(".png") || currentURL.endsWith(".jpg")) {
           //这里表示如果是静态文件，则进行正常的页面跳转
           filterChain.doFilter(request, response);
           return;
       } else {
           String url = targetURL.substring(targetURL.lastIndexOf('/'));
           //对当前页面进行判断，如果当前页面不为登录页面
           if(!(signin_page.equals(targetURL) || signin.equals(url))){
               System.out.println("1---"+targetURL+"---ctxPath:"+ctxPath+"---currentURL:"+currentURL);
               //在不为登陆页面时，再进行判断，如果不是登陆页面也没有session则跳转到登录页面
               if(session == null || session.getAttribute("user") == null){
                   if (StringUtils.equals("XMLHttpRequest", type)) {
                       // 处理ajax请求
                       response.setHeader("REDIRECT", "REDIRECT");//告诉ajax这是重定向
                       response.setHeader("CONTEXTPATH", basePath+"/signin.html");//重定向地址
                       response.setStatus(HttpServletResponse.SC_FORBIDDEN);
                       return;
                   }else{
                       response.sendRedirect(ctxPath+signin_page);
                       return;
                   }
               }else{
                   //这里表示正确，会去寻找下一个链，如果不存在，则进行正常的页面跳转
                   filterChain.doFilter(request, response);
                   return;
               }
           }else{
               //这里表示如果当前页面是登陆页面，跳转到登陆页面
               filterChain.doFilter(request, response);
               return;
           }
       }
   }

    @Override
    public void destroy() {
        System.out.println("过滤器销毁了");
    }


}
*/
