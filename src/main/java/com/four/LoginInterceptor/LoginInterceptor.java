package com.four.LoginInterceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.four.entity.User;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class LoginInterceptor implements HandlerInterceptor {
    private Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {

        System.err.println("postHandle");
    }

    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        System.err.println("afterCompletion");
    }

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException, IOException {
        Integer count = 0;
        HttpSession session = request.getSession(true);
        logger.info("----进入登录拦截器--url：" + request.getServletPath() + "-----");
        if (request.getServletPath().toString().equals("/")){
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return false;
        }
        if (session.getAttribute("user") != null){
            String path = request.getServletPath();
            String url = path.substring(path.lastIndexOf("/")).substring(1, 3);
            System.err.println(url + "我的权限" + path);
            User user = (User) session.getAttribute("user");
            Integer mokid = (Integer) session.getAttribute("mokuaiid");
            System.err.println(user.getUserid() + "aa" + mokid + "31313" + request.getSession().getAttribute("quanxian"));
            List<Map<String, Object>> list = (List<Map<String, Object>>) request.getSession().getAttribute("quanxian");
            String  qxnames="";
            for (int i = 0; i < list.size(); i++) {
                qxnames+=list.get(i).get("qxname")+"/"+list.get(i).get("mkid")+"@";
            }
            String [] arr=qxnames.split("@");
            System.err.println(arr.length+"qxnames");
            for (int e = 0; e < arr.length;e++){
                System.err.println(arr[e]+"arr[i]");

              String []add=  arr[e].split("/");
                String []qx=add[0].split(",");
              for (int j=0;j<qx.length;j++){
                  if (!qx[j].equals("")&&qx[j].equals("0")){
                      count=1;
                      break;
                  }else{
                 if (url.equals(qx[j]) && Integer.valueOf(add[1])==mokid){
                     System.err.println(url+"A"+qx[j]+Integer.valueOf(add[1])+"A"+mokid);
                        System.err.println("有权限123");
                        count = 1;
                     break;
                    }
                  }
              }

            }
        } else {
            String type = request.getHeader("X-Requested-With") == null ? "" : request.getHeader("X-Requested-With");
            if (StringUtils.equals("XMLHttpRequest", type)) {
                response.setHeader("REDIRECT", "REDIRECTUSER");//告诉ajax这是重定向
                response.setHeader("CONTEXTPATH", request.getContextPath() + "/login.jsp");//重定向地址
                response.setStatus(HttpServletResponse.SC_OK);
                return false;
            }else{
                response.sendRedirect(request.getContextPath() + "/login.jsp");
                return false;
            }

        }
        System.err.println("权限" + count + "权限");
        if (1==1){
            if (count == 1){
                return true;
            } else {
                String type = request.getHeader("X-Requested-With") == null ? "" : request.getHeader("X-Requested-With");
                if (StringUtils.equals("XMLHttpRequest", type)) {
                    //int  = 200;
                    response.setHeader("REDIRECT", "REDIRECT");//告诉ajax这是重定向
                    response.setHeader("CONTEXTPATH", request.getContextPath() + "/ftmp_183_ma/index.html");//重定向地址
                    response.setStatus(HttpServletResponse.SC_OK);
                    return false;
                }else{
                    return false;
                }
            }
        }else{
            return true;
        }
    }
}