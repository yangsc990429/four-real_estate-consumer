package com.four.controller;

import com.alibaba.fastjson.JSON;
import com.four.entity.*;
import com.four.service.ZhService;
import org.apache.catalina.servlet4preview.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/zh")
public class ZhController {

     @Autowired
     private ZhService zhService;

    //*******公交信息****************************************************************************************************************
     //查询公交信息
     @RequestMapping("/queryBus")
     @ResponseBody
     public String queryBus(){

          List<Public> list= zhService.queryBus();
          return JSON.toJSONString(list);

     }
    //删除公交信息
     @RequestMapping("/delbus")
     @ResponseBody
     public String  delbus(Integer id){
          System.err.println(id+"======================");
          zhService.delbus(id);

          return   "delsuccess";
     }
    //批量删除公交信息
     @RequestMapping("/deleteAllBus")
     @ResponseBody
     public String  deleteAllBus(String id){
          System.err.println(id+"==========++++++++++++++++++++++=========================");
          zhService.deleteAllBus(id);

          return   "delsuccess";
     }

     //根据ID回显公交信息
     @RequestMapping("/updatehx")
     @ResponseBody
     public Public  updatehx(Integer id){
          Public bus= zhService.updatehx(id);
          System.err.println(bus+"===================================");
          return   bus;
     }
     //修改公交信息
     @RequestMapping("/upbus")
     @ResponseBody
     public String upbus(Public bus){
               zhService.upbus(bus);
          System.err.println(bus+"+++++++++++++++");
            return "updssuccess";
     }
     //新增公交信息
     @RequestMapping("/addbus")
     @ResponseBody
     public String  addbus(Public bus){

          zhService.addbus(bus);
          return "addsuccess";

     }
     //新增时查询序号
    @RequestMapping("/queryxuhao")
    @ResponseBody
    public String queryxuhao(){

        Integer aa=zhService.queryxuhao();
        System.err.println(aa+"***********************************************");
        return JSON.toJSONString(aa);

    }
//**********业务配套信息**********************************************************************************************************

    //查询配套信息
    @RequestMapping("/queryPeiTao")
    @ResponseBody
    public String queryPeiTao(){

        List<Mating> list=zhService.queryPeiTao();
        System.err.println(list+"**********业务配套信息查询**************");
        return JSON.toJSONString(list);

    }
    //删除配套信息
    @RequestMapping("/delpeitao")
    @ResponseBody
    public String  delpeitao(Integer id){
        System.err.println(id+"======================");
        zhService.delpeitao(id);

        return   "delsuccess";
    }

    //批量删除配套信息
    @RequestMapping("/delallpeitao")
    @ResponseBody
    public String  delallpeitao(String id){
        System.err.println(id+"==========++++++++++++++++++++++=========================");
        zhService.delallpeitao(id);

        return   "delsuccess";
    }
    //新增
    //新增时查询出售
    @RequestMapping("/queryxuhaochushou")
    @ResponseBody
    public String queryxuhaochushou(){

        List<Apartment> list=zhService.queryxuhaochushou();
        System.err.println(list+"**********业务配套信息查询**************");
        return JSON.toJSONString(list);

    }
    //新增时查询出租
    @RequestMapping("/queryxuhaochuzu")
    @ResponseBody
    public String queryxuhaochuzu(){

        List<Apartment> list=zhService.queryxuhaochuzu();
        System.err.println(list+"**********业务配套信息查询**************");
        return JSON.toJSONString(list);

    }
    //新增时查询序号
    @RequestMapping("/queryxuhaoP")
    @ResponseBody
    public String queryxuhaoP(){

        Integer aa=zhService.queryxuhaoP();
        System.err.println(aa+"***********************************************");
        return JSON.toJSONString(aa);

    }
    //新增
    @RequestMapping("/addpeitao")
    @ResponseBody
    public String   addpeitao(Mating mating){

        zhService.addpeitao(mating);
        System.err.println(mating+"************新增*************************");

       return "addsuccess";
    }
    //配套信息回显
    @RequestMapping("/queryByIdpeitao")
    @ResponseBody
    public Mating queryByIdpeitao(Integer id){
        Mating peitao = zhService.queryByIdpeitao(id);
        System.err.println(peitao+"************回显*************************");
        return peitao;
    }
   //修改配套信息
    @RequestMapping("/updatePeiTao")
    @ResponseBody
    public String updatePeiTao(Mating peitao){
        zhService.updatePeiTao(peitao);
        System.err.println(peitao+"+++++++*******修改*********++++++++");
        return "updssuccess";
    }

//**********建材中心信息**********************************************************************************************************

    //查询建材信息
    @RequestMapping("/queryJianCai")
    @ResponseBody//
    public  List<Map<String,Object>> queryJianCai(){

        System.err.println("*********123456*************");

        List<Map<String,Object>> list=zhService.queryJianCai();
        System.err.println(list+"**********建材信息查询**************");
        return list;

    }

    //批量删除建材信息
    @RequestMapping("/delallJIan")
    @ResponseBody
    public String  delallJIan(String id){
        System.err.println(id+"==========++++++++++++++++++++++=========================");
        zhService.delallJIan(id);

        return   "delsuccess";
    }


    //配套信息回显
    @RequestMapping("/renzhengByIdjc")
    @ResponseBody
    public Huirenshen renzhengByIdjc(Integer huirenshenid){
        Huirenshen ren = zhService.renzhengByIdjc(huirenshenid);
        System.err.println(ren+"************回显认证*************************");
        return ren;
    }


}
