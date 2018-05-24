package com.four.controller;


import com.alibaba.fastjson.JSON;
import com.four.entity.*;
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
import com.four.entity.Overstory;

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
            List list=lfqService.queryQuxan(user.getUserid());
            request.getSession().setAttribute("quanxian",list);
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
    //查询树
    @RequestMapping("addmokuai")
    @ResponseBody
    public String querytree(Integer id,HttpServletRequest request){
        request.getSession().setAttribute("mokuaiid",id);

      /*  System.err.println("杀杀杀"+request.getSession().getAttribute("mokuaiid"));*/
        return "sadas";
    }



    //查询日志
    @RequestMapping("queryloginrz")
    @ResponseBody
    public String queryloginrz(){

        Query query = new Query();
        List<Aop> aops = mongoTemplate.find(query,Aop.class,"login");
/*         request.getSession().setAttribute("aops",aops);
        Object aops1 = request.getSession().getAttribute("aops");*/
        /*System.err.println(aops+"mmmmmmmm");*/
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


    @RequestMapping("queryaopList")
    @ResponseBody
    public Map<String,Object>  AopList(int  page,int  rows){
        Map<String,Object> map=new HashMap<>();
        Query query = new Query();
        query.skip((page-1)*rows);
        query.limit(rows);
        List<Aop> list =mongoTemplate.find(query,Aop.class,"login");
       /* System.err.println(list+"wwwwwwwwwwwwww");*/
        /*int  total=list.size();*/
        map.put("rows", list);
        map.put("total",mongoTemplate.findAll(Aop.class).size());
	/*	System.out.println();*/
        return map;
    }


    //查询地铁
    @RequestMapping("queryMetro")
    @ResponseBody
    public String queryMetro(){
        List<Metro> list = lfqService.queryMetro();
        return JSON.toJSONString(list);
    }

    //查询序号
    @RequestMapping("queryxuhao")
    @ResponseBody
    public String queryxuhao(){
        Integer asd = lfqService.queryxuhao();
        return asd.toString();
    }


    //新增地铁
    @RequestMapping("addditiexianlu")
    @ResponseBody
    public String addditiexianlu(Metro metro){
        lfqService.addditiexianlu(metro);
        return "addsuccess";
    }



    //删除地铁
    @RequestMapping("deleteditie")
    @ResponseBody
    public String deleteditie(Integer id){
        lfqService.deleteditie(id);
        return "delsuccess";
    }

    //批量删除地铁
    @RequestMapping("deleteidspishan")
    @ResponseBody
    public String deleteidspishan(String id){
        lfqService.deleteidspishan(id);
        return "delsuccess";
    }


    //修改地铁回显
    @RequestMapping("updateditiehui")
    @ResponseBody
    public String updateditiehui(Integer id){
        Metro list =  lfqService.updateditiehui(id);
        return JSON.toJSONString(list);
    }


    //修改地铁
    @RequestMapping("updateditiegai")
    @ResponseBody
    public String updateditiegai(Metro metro){
        lfqService.updateditiegai(metro);
        return "updsuccess";
    }


//-------------------------------房屋楼层

    //查询房屋楼层
    @RequestMapping("queryOverstory")
    @ResponseBody
    public String queryOverstory(){
        List<Overstory> list = lfqService.queryOverstory();
        return JSON.toJSONString(list);
    }

    //查询序号
    @RequestMapping("queryfwlcxuhao")
    @ResponseBody
    public String queryfwlcxuhao(){
        Integer asd = lfqService.queryfwlcxuhao();
        return asd.toString();
    }

    //新增房屋楼层
    @RequestMapping("adddfanglcsz")
    @ResponseBody
    public String adddfanglcsz(Overstory overstory){
        lfqService.adddfanglcsz(overstory);
        return "addsuccess";
    }

    //删除房屋楼层
    @RequestMapping("deletefwcxsz")
    @ResponseBody
    public String deletefwcxsz(Integer id){
        lfqService.deletefwcxsz(id);
        return "delsuccess";
    }

    //批量删除房屋楼层
    @RequestMapping("deletefwcxpishan")
    @ResponseBody
    public String deletefwcxpishan(String id){
        lfqService.deletefwcxpishan(id);
        return "delsuccess";
    }

    //修改房屋楼层回显
    @RequestMapping("updatefwcxhui")
    @ResponseBody
    public String updatefwcxhui(Integer id){
        Overstory list =  lfqService.updatefwcxhui(id);
        return JSON.toJSONString(list);
    }

    //修改房屋楼层
    @RequestMapping("updatefwcxszgai")
    @ResponseBody
    public String updatefwcxszgai(Overstory overstory){
        lfqService.updatefwcxszgai(overstory);
        return "updsuccess";
    }


    //-------------------------------所有会员
    //查询所有会员
    @RequestMapping("queryHuiji")
    @ResponseBody
    public String queryHuiji(){
        List<Map<Object,String>> list = lfqService.queryHuiji();
        return JSON.toJSONString(list);
    }

    //查询回显所有会员
    @RequestMapping("updatesyhyhuicha")
    @ResponseBody
    public String updatesyhyhuicha(Integer id){
        System.err.println(id+"11111111166");
        List<Map<Object,String>> list = lfqService.updatesyhyhuicha(id);
        System.err.println(list+"33333333333333");
        return JSON.toJSONString(list);
    }

}
