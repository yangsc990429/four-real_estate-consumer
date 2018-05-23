package com.four.controller;

import com.alibaba.fastjson.JSON;
import com.four.entity.Public;
import com.four.service.ZhService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/zh")
public class ZhController {

     @Autowired
     private ZhService zhService;

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

}
