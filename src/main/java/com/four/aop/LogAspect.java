package com.four.aop;


import com.four.entity.Aop;
import com.four.entity.User;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

@Aspect
@Component
public class LogAspect {

    private  static  String url="";


    @Autowired
    private MongoTemplate mongoTemplate;

    @Pointcut("execution(public * com.four.controller.*.*(..))")
    public void webLog(){
    }


    @Before("webLog()")
    public void deBefore(JoinPoint joinPoint) throws Throwable {
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        url= request.getRequestURL().toString();
    }

    @AfterReturning(returning = "ret", pointcut = "webLog()")
    public void doAfterReturning(Object ret) throws Throwable {
        HttpServletRequest request= ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
        String url = request.getRequestURL().toString().substring(request.getRequestURL().toString().lastIndexOf("/"));
        if ("/queryuser".equals(url)&&url!=null) {
            User user = (User) request.getSession().getAttribute("user");
            Aop aop = new Aop();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            aop.setUserid(user.getUserid());
            aop.setUsername(user.getUsername());
            aop.setUserpass(user.getUserpass());
            aop.setDatelo(sdf.format(new Date()));
            aop.setPcip(request.getRemoteAddr());
            aop.setDenglu("登录");
            mongoTemplate.save(aop);
        }
    }

}
