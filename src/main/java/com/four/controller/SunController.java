package com.four.controller;

import com.alibaba.fastjson.JSON;
import com.four.entity.Orientation;
import com.four.entity.Situation;
import com.four.service.SunService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("SunController")
public class SunController {

   @Autowired
    private SunService sunService;

  /*private Orientation Orientation;*/
   @RequestMapping("queryOrientation")
    @ResponseBody
    public String queryOrientation(){
       List<Orientation> list=sunService.queryOrientation();
       return JSON.toJSONString(list);
   }
//查询序列号  queryxuhao
@RequestMapping("queryxuhao")
@ResponseBody
public String queryxuhao(){
    Integer asd = sunService.queryxuhao();
    return asd.toString();
}

@RequestMapping("addchaoxiangSS")
@ResponseBody
public String addchaoxiangSS(Orientation orientation){
    SimpleDateFormat asd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    orientation.setCreatedate(asd.format(new Date()));
    System.err.println(orientation+"11111111111122");
    String a = sunService.addchaoxiangSS(orientation);
    return a;
}
 //删除   deleteditie1
 @RequestMapping("deleteditie1")
 @ResponseBody
 public String deleteditie1(Integer id){
     sunService.deleteditie1(id);
     return "delsuccess";
 }
 //批量删除deleteidspishan
 @RequestMapping("deleteidspishan")
 @ResponseBody
 public String deleteidspishan(String id){
     sunService.deleteidspishan(id);
     return "delsuccess";
 }
 //回显updatechaoxianghui
 @RequestMapping("updatechaoxianghui")
 @ResponseBody
 public String updatechaoxianghui(Integer id){
     Orientation list =  sunService.updatechaoxianghui(id);
     return JSON.toJSONString(list);
 }
//修改    updatechaoxianggai
@RequestMapping("updatechaoxianggai")
@ResponseBody
public String updatechaoxianggai(Orientation orientation){
    sunService.updatechaoxianggai(orientation);
    return "updsuccess";
}
//查询情况
@RequestMapping("querySituation")
@ResponseBody
public String querySituation(){
    List<Situation> list=sunService.querySituation();
    return JSON.toJSONString(list);
}
//查询序列号  queryxuhao2
@RequestMapping("queryxuhao2")
@ResponseBody
public String queryxuhao2(){
    Integer asd1 = sunService.queryxuhao2();
    return asd1.toString();
}
//添加  addqingkuangSS
@RequestMapping("addqingkuangSS")
@ResponseBody
public String addqingkuangSS(Situation situation){
    SimpleDateFormat asd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    situation.setCreatedate(asd.format(new Date()));
    System.err.println(situation+"11111111111122");
    String a = sunService.addqingkuangSS(situation);
    return a;
}
//删除  deleteQingKuang
@RequestMapping("deleteQingKuang")
@ResponseBody
public String deleteQingKuang(Integer id){
    sunService.deleteQingKuang(id);
    return "delsuccess1";
}
//批量删除deleteidspishan2
@RequestMapping("deleteidspishan2")
@ResponseBody
public String deleteidspishan2(String id){
    sunService.deleteidspishan2(id);
    return "delsuccess1";
}
//回显  updateqingkuanghui
@RequestMapping("updateqingkuanghui")
@ResponseBody
public String updateqingkuanghui(Integer id){
    Situation list =  sunService.updateqingkuanghui(id);
    return JSON.toJSONString(list);
}
//修改  updateqingkuanggai
@RequestMapping("updateqingkuanggai")
@ResponseBody
public String updateqingkuanggai(Situation situation){
    sunService.updateqingkuanggai(situation);
    return "updsuccess1";
}
}
