package com.four.controller;


import com.alibaba.fastjson.JSON;
import com.four.entity.*;
import com.four.service.LfqService;
import com.four.util.AliyunOSSClientUtil;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import com.four.entity.Overstory;
import org.springframework.web.multipart.MultipartFile;

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
        System.err.println("地铁设置");
        List<Metro> list = lfqService.queryMetro();
        System.err.println(list+"地铁设置");
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


    //---------------Huiji----------------所有会员
    //查询个人会员
    @RequestMapping("queryHuiji")
    @ResponseBody
    public String queryHuiji(){
        List<Map<Object,String>> list = lfqService.queryHuiji();
        return JSON.toJSONString(list);
    }


    //查询所有会员
    @RequestMapping("queryHuijissss")
    @ResponseBody
    public String queryHuijissss(){
        List<Map<Object,String>> list = lfqService.queryHuijissss();
        return JSON.toJSONString(list);
    }

    //查询回显所有会员
    @RequestMapping("updatesyhyhuicha")
    @ResponseBody
    public String updatesyhyhuicha(String id){
        Huiji list = lfqService.updatesyhyhuicha(id);
        return JSON.toJSONString(list);
    }

    //查询所有会员等级
    @RequestMapping("queryhydj")
    @ResponseBody
    public String queryhydj(){
        List<Huideng> list = lfqService.queryhydj();
        return JSON.toJSONString(list);
    }

    //查询所有会员地区
    @RequestMapping("querydrea")
    @ResponseBody
    public String querydrea(){
        List<Area> list = lfqService.querydrea();
        return JSON.toJSONString(list);
    }

    //查询所有会员地区地方
    @RequestMapping("querydreadifangid")
    @ResponseBody
    public String querydreadifangid(String id){
        List<Area> list = lfqService.querydreadifangid(id);
        return JSON.toJSONString(list);
    }


    //修改所有会员
    @RequestMapping("updatesyhysyhygai")
    @ResponseBody
    public String updatesyhysyhygai(Huiji hj){
       lfqService.updatesyhygai(hj);
        return "updsuccess";
    }

    //查询金钱管理
    @RequestMapping("queryhyrenzhengshenhe")
    @ResponseBody
    public String queryhyrenzhengshenhe(String id){
        Huijin list =  lfqService.queryhyrenzhengshenhe(id);
        return JSON.toJSONString(list);
    }


    //修改金钱管理
    @RequestMapping("updatejqglhui")
    @ResponseBody
    public String updatejqglhui(Huijin hj){
        System.err.println(hj+"---88");
        lfqService.updatejqglhui(hj);

        return "updsuccess";
    }



 //图片上传
    @RequestMapping(value="insertPicture",method = RequestMethod.POST, produces = "application/json;charset=utf8")
    @ResponseBody
    public Object insertPicture(@RequestParam("file") MultipartFile... files){
        String greatBeauty = AliyunOSSClientUtil.GreatBeauty(files[0], files[0].getOriginalFilename());
        Map map = new HashMap(1);
        map.put("a",greatBeauty);
        return map;
    }

    //认证审核
    @RequestMapping("queryhuiyuanrenzhneg")
    @ResponseBody
    public String queryhuiyuanrenzhneg(String id){
        Huirenzhuang list =  lfqService.queryhuiyuanrenzhneg(id);

        return JSON.toJSONString(list);
    }


    //认证审核
    @RequestMapping("updatexiugairz")
    @ResponseBody
    public String updatexiugairz(Huirenzhuang rz){
         lfqService.updatexiugairz(rz);
        return "updsuccess";
    }

    //报表展示
    @RequestMapping("queryshoukuan")
    @ResponseBody
    public String queryshoukuan(){
        Map<String , Object> list = lfqService.queryshoukuan();
        return JSON.toJSONString(list);
    }




//---------------------------------------------孙博
    //queryWTMZ
    @RequestMapping("queryWTMZ")
    @ResponseBody
    public String queryWTMZ(){
        List<t_sellzu> list=lfqService.queryWTMZ();
        System.err.println(list+"===========================");
        return JSON.toJSONString(list);
    }
    //批量删除 deleteMZ
    @ResponseBody
    @RequestMapping("deleteMZ")
    public void deleteMZ(String ids){

        lfqService.deleteMZ(ids);
    }
    //---找房委托查询 queryWTZF

    @RequestMapping("queryWTZF")
    @ResponseBody
    public  List<Map<String,Object>> queryWTZF(){
        List<Map<String,Object>> list =lfqService.queryWTZF();
        return list;
    }
    //删除  delallZF
    @ResponseBody
    @RequestMapping("deleteZF")
    public void deleteZF(String idse){

        lfqService.deleteZF(idse);
    }
}
