package com.four.controller;

import com.alibaba.fastjson.JSON;
import com.four.entity.Tree;
import com.four.entity.User;
import com.four.service.LfqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("lfq")
public class LfqController {

    @Autowired
    private LfqService lfqService;

    //登陆
    @RequestMapping("queryuser")
    @ResponseBody
    public String queryuser(User user){
        System.err.println("aaaaaaaaaaa"+user);
        String usjsp = lfqService.queryuser(user);
        System.err.println(usjsp);
        return usjsp;
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
