package com.four.controller;

import com.alibaba.fastjson.JSON;
import com.four.entity.Aop;
import com.four.entity.Tree;
import com.four.entity.User;
import com.four.service.LfqService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("lfq")
public class LfqController {

    @Autowired
    private LfqService lfqService;

    @Autowired
    private MongoTemplate mongoTemplate;

    //登陆
    @RequestMapping("queryuser")
    @ResponseBody
    public String queryuser(User user, HttpServletRequest request){

        String usjsp = lfqService.queryuser(user);
        if (Integer.valueOf(usjsp.substring(0,1))==1){
            user.setUserid(Integer.valueOf(usjsp.substring(1)));
            request.getSession().setAttribute("user",user);
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
        return JSON.toJSONString(list);
    }

    //查询日志
    @RequestMapping("queryloginrz")
    @ResponseBody
    public String queryloginrz(){

        Query query = new Query();
        List<Aop> aops = mongoTemplate.find(query,Aop.class,"login");
/*         request.getSession().setAttribute("aops",aops);
        Object aops1 = request.getSession().getAttribute("aops");*/
        System.err.println(aops+"mmmmmmmm");
     /*   model.addAttribute("aops",aops);*/
        return JSON.toJSONString(aops);
    }
/*    public Map<String,Object> AopList(){
        Map<String,Object> map=new HashMap<>();
*//*      Query query = new Query();
        query.skip((page-1)*rows);
        query.limit(rows);*//*
        List<Aop> list =mongoTemplate.find(query,Aop.class,"login");
		*//*int  total=list.size();*//*
        map.put("rows", list);
        map.put("total",mongoTemplate.findAll(Aop.class).size());
	*//*	System.out.println();*//*
        return map;
    }*/


    @RequestMapping("aopList")
    @ResponseBody
    public Map<String,Object>  AopList(int  page,int  rows){
        Map<String,Object> map=new HashMap<>();
        Query query = new Query();
        query.skip((page-1)*rows);
        query.limit(rows);
        List<Aop> list =mongoTemplate.find(query,Aop.class,"login");
        System.err.println(list+"wwwwwwwwwwwwww");
        /*int  total=list.size();*/
        map.put("rows", list);
        map.put("total",mongoTemplate.findAll(Aop.class).size());
	/*	System.out.println();*/
        return map;
    }


}
