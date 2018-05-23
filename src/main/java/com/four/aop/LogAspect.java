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

    @Pointcut("execution(public * com.four.aop.*.*(..))")
    public void webLog(){
    }


    @Before("webLog()")
    public void deBefore(JoinPoint joinPoint) throws Throwable {
        // 接收到请求，记录请求内容
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        // 记录下请求内容
        url= request.getRequestURL().toString();
     /*   System.out.println("URL : " + request.getRequestURL().toString());
        System.out.println("HTTP_METHOD : " + request.getMethod());
        System.out.println("IP : " + request.getRemoteAddr());
        System.out.println("CLASS_METHOD : " + joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName());
        System.out.println("ARGS : " + Arrays.toString(joinPoint.getArgs()));*/
    }

    @AfterReturning(returning = "ret", pointcut = "webLog()")
    public void doAfterReturning(Object ret) throws Throwable {
        HttpServletRequest request= ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
        String url = request.getRequestURL().toString().substring(request.getRequestURL().toString().lastIndexOf("/"));

        /*mongoTemplate.save(aop);*/
        System.err.println(url+"日志访问方法");
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
 /*           User user = new User();
            System.err.println("req : " + req);
            System.err.println("getUsername : " + req.getUsername());
            user.setUserid(req.getUserid());
            user.setUsername(req.getUsername());
            user.setUserpass(req.getUserpass());
            System.err.println("retretretretrettoString : " + ret.toString());*/
           /* user.setZtid(ret.toString());*/
            /*mongoTemplate.save(user);*/
        }
        // 处理完请求，返回内容
    }

/*    //后置异常通知
    @AfterThrowing("webLog()")
    public void throwss(JoinPoint jp){
        System.err.println(jp);
        System.out.println("方法异常时执行.....");
        YIchang yichang = new YIchang();

         yichang.setYcvalue(jp.toString());
              *//*  news.setContent(list.get(i).getContent());
                news.setPublishtime(list.get(i).getPublishtime());*//*
           mongoTemplate.save(yichang);


    }*/


}
