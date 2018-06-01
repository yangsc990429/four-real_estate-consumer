package com.four.controller;

import com.alibaba.fastjson.JSON;
import com.four.entity.*;
import com.four.service.SunService;
import com.four.util.AliyunOSSClientUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
//----------------中介
    //查询  queryzhongjie
@RequestMapping("queryzhongjie")
@ResponseBody
public String queryzhongjie(){
    List<Map<Object,String>> list = sunService.queryzhongjie();
    return JSON.toJSONString(list);
}/*
//查询回显所有会员 updatesyhyhuicha1
@RequestMapping("updatesyhyhuicha1")
@ResponseBody
public String updatesyhyhuicha1(String id){
    Huiji list = sunService.updatesyhyhuicha1(id);
    return JSON.toJSONString(list);
}
//查询地区querydrea
@RequestMapping("querydrea")
@ResponseBody
public String querydrea(){
    List<Area> list = sunService.querydrea();
    return JSON.toJSONString(list);
}
//查询地区地方  querydreadifangid
@RequestMapping("querydreadifangid1")
@ResponseBody
public String querydreadifangid1(String id){
    List<Area> list = sunService.querydreadifangid1(id);
    return JSON.toJSONString(list);
}
//
//查询等级 queryhydj
@RequestMapping("queryhydj")
@ResponseBody
public String queryhydj(){
    List<Huideng> list = sunService.queryhydj();
    return JSON.toJSONString(list);
}
//修改  updatesyhysyhygai
@RequestMapping("updatesyhysyhygai")
@ResponseBody
public String updatesyhysyhygai(Huiji hj){
    System.err.println(hj+"修改内容");
    sunService.updatesyhygai(hj);
    return "updsuccess";
}*/
//图片上传
/*
@RequestMapping(value="insertPicture",method = RequestMethod.POST, produces = "application/json;charset=utf8")
@ResponseBody
public Object insertPicture(@RequestParam("file") MultipartFile... files){
    String greatBeauty = AliyunOSSClientUtil.GreatBeauty(files[0], files[0].getOriginalFilename());
    Map map = new HashMap(1);
    map.put("a",greatBeauty);
    return map;
}*/
//认证queryhuiyuanrenzhneg
/*
@RequestMapping("queryhuiyuanrenzhneg")
@ResponseBody
public String queryhuiyuanrenzhneg(String id){
    Huirenzhuang list =  sunService.queryhuiyuanrenzhneg(id);

    return JSON.toJSONString(list);
}
*/


}
