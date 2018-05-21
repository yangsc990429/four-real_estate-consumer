package com.four.controller;

import com.alibaba.fastjson.JSON;
import com.four.entity.Tree;
import com.four.entity.User;
import com.four.service.LfqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("lfq")
public class LfqController {

    @Autowired
    private LfqService lfqService;

    //登陆
    @RequestMapping("queryuser")
    @ResponseBody
    public String queryuser(User user, HttpServletRequest request){
        System.err.println("aaaaaaaaaaa"+user);
        String usjsp = lfqService.queryuser(user);
        if (Integer.valueOf(usjsp.substring(0,1))==1){
            user.setUserid(Integer.valueOf(usjsp.substring(1)));
            request.getSession().setAttribute("user",user);
            Object user1 = request.getSession().getAttribute("user");
            System.err.println(user1+"7777777777777");
            return 1+"";
        }else{
            return usjsp;
        }

    }

    //查询树
    @RequestMapping("querytree")
    @ResponseBody
    public String querytree(Integer id){
        List<Tree> list = lfqService.querytree(id);
        System.err.println(JSON.toJSONString(list)+"toJSONString");
        return JSON.toJSONString(list);
    }

}
