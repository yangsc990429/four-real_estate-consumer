/*
package com.four.LoginInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



import com.four.entity.Jurisdiction;
import com.four.entity.User;
import com.four.service.YangscService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


import java.util.List;

public class LoginInterceptor implements HandlerInterceptor {
    @Autowired
    private Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);


    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
    }

    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
    }

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //获取session
        HttpSession session = request.getSession(true);

        logger.info("----进入登录拦截器--url：" + request.getServletPath() + "-----");
        if (request.getServletPath().toString().equals("/")) {
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return false;
        } else {
            if (session.getAttribute("user") == null) {
                System.err.println(request.getContextPath() + "/login.jsp");
                return false;
            } else {
                String path = request.getServletPath();
                String url = path.substring(path.lastIndexOf("/")).substring(1, 3);
                System.err.println(url + "我的权限" + path);
                if (!url.equals("er") && !url.equals("")) {
                    System.err.println(1);
                    User user = (User) session.getAttribute("user");
                    System.err.println(2);
                    Integer mokid = (Integer) session.getAttribute("mokuaiid");
                    System.err.println(3);
                    System.err.println(user.getUserid() + "aa" + mokid);
                    List<Jurisdiction> list= (List<Jurisdiction>) request.getSession().getAttribute("quanxian");
                   for (int i=0;i<list.size();i++){
                       if (url.equals(list.get(i).getQxname())){
                           return true;
                       }
                   }
                }
                return false;
            }

        }

    }
}
*/
