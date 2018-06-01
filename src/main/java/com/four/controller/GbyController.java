package com.four.controller;

import com.alibaba.fastjson.JSON;
import com.four.entity.*;
import com.four.service.GbyService;
import com.four.util.AliyunOSSClientUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("gby")
public class GbyController {
    @Autowired
    private GbyService gbyService;

    @RequestMapping("wuyeleixing")
    public String wuyeleixing(){
        return "gby/wuyeleixing";
    }
    //查询物业类型
    @RequestMapping("queryApartment")
    @ResponseBody
    public List<Apartment> queryApartment() {
        List<Apartment> list=gbyService.queryApartment();
        return list;
    }
    //排序
    @RequestMapping("querycount")
    @ResponseBody
    public  Integer querycount(){
        Integer paixu=gbyService.querycount();
        return  paixu;
    }
    //添加
    @RequestMapping("addApartment")
    @ResponseBody
    public  void addApartment(Apartment apartment){

        gbyService.addApartment(apartment);
    }
    //上传图片
    @RequestMapping(value = "/addPicture", method = RequestMethod.POST, produces = "application/json;charset=utf8")
    @ResponseBody
    public  Object addPicture(@RequestParam("file") MultipartFile[] files){
        String greatBeauty = AliyunOSSClientUtil.GreatBeauty(files[0], files[0].getOriginalFilename());
        Map map = new HashMap(1);
        map.put("a",greatBeauty);
        return map;
    }
    //删除
    @RequestMapping("deleteApartment")
    @ResponseBody
    public void deleteApartment(Integer id){
        gbyService.deleteApartment(id);
    }
    //回显
    @RequestMapping("queryById")
    @ResponseBody
    public  Apartment queryById(Integer id){
        return  gbyService.queryById(id);
    }
    //修改
    @RequestMapping("updateApartment")
    @ResponseBody
    public  void  updateApartment(Apartment apartment){
        gbyService.updateApartment(apartment);
    }
    //-------------------------------------------------------------------------------------------------------------------------------------------------
    //查询物业特色设置
    @RequestMapping("queryFeature")
    @ResponseBody
    public List<Feature> queryFeature() {
        List<Feature> list=gbyService.queryFeature();
        return list;
    }
    //排序
    @RequestMapping("querycount1")
    @ResponseBody
    public  Integer querycount1(){
        Integer paixu=gbyService.querycount1();
        return  paixu;
    }
    //查询物业类型
    @RequestMapping("queryApartment1")
    @ResponseBody
    public List<Apartment> queryApartment1() {
        List<Apartment> list=gbyService.queryApartment1();
        return list;
    }
    //查询物业类型
    @RequestMapping("queryApartment2")
    @ResponseBody
    public List<Apartment> queryApartment2() {
        List<Apartment> list=gbyService.queryApartment2();
        return list;
    }
    //添加物业特色
    @RequestMapping("addFeature")
    @ResponseBody
    public  void addFeature(Feature feature){
        System.err.println(feature);
        gbyService.addFeature(feature);
    }
    //删除
    @RequestMapping("deleteFeature")
    @ResponseBody
    public void deleteFeature(Integer id){
        gbyService.deleteFeature(id);
    }
    //批量删除
    @RequestMapping("deleteswuyetese")
    @ResponseBody
    public void  deleteswuyetese(String ids){
        gbyService.deleteswuyetese(ids);
    }
    //回显
    @RequestMapping("queryByIdwuyetese")
    @ResponseBody
    public Feature queryByIdwuyetese(Integer id){
        Feature gg = gbyService.queryByIdwuyetese(id);
        return gg;
    }
    //修改
    @RequestMapping("updatewuyetese")
    @ResponseBody
    public void updatewuyetese(Feature feature){
        gbyService.updatewuyetese(feature);
    }
    //-----------------------------------------------------------------------------------------------------------------------------------------

    //查询经纪人
    @RequestMapping("queryjingji")
    @ResponseBody
    public String queryjingji(){
        List<Map<Object,String>> list = gbyService.queryjingji();
        return JSON.toJSONString(list);
    }

    //查询回显所有会员
    @RequestMapping("updatesyhyhuicha")
    @ResponseBody
    public String updatesyhyhuicha(String id){
        Huiji list = gbyService.updatesyhyhuicha(id);
        return JSON.toJSONString(list);
    }

    //查询所有会员等级
    @RequestMapping("queryhydj")
    @ResponseBody
    public String queryhydj(){
        List<Huideng> list = gbyService.queryhydj();
        return JSON.toJSONString(list);
    }

    //查询所有会员地区
    @RequestMapping("querydrea")
    @ResponseBody
    public String querydrea(){
        List<Area> list = gbyService.querydrea();
        return JSON.toJSONString(list);
    }

    //查询所有会员地区地方
    @RequestMapping("querydreadifangid")
    @ResponseBody
    public String querydreadifangid(String id){
        List<Area> list = gbyService.querydreadifangid(id);
        return JSON.toJSONString(list);
    }

    //修改所有会员
    @RequestMapping("updatesyhysyhygai")
    @ResponseBody
    public String updatesyhysyhygai(Huiji hj){
        gbyService.updatesyhygai(hj);
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
    //-----------------------------------------------------
    //出租管理
    //跳页面
    @RequestMapping("chuzu")
    public String chuzu(){
        return "Gby/chuzu";
    }
    //查询
    @RequestMapping("querychuzu")
    @ResponseBody
    public  List<Map<String,Object>> querychuzu(Integer wuyeid,String chuzuname){
        List<Map<String,Object>> list =gbyService.querychuzu(wuyeid,chuzuname);
        return list;
    }
    //出租信息
    @RequestMapping("querychuzuxx")
    public String querychuzuxx(Integer id,Model model){
        List<Map<String,Object>> list =  gbyService.querychuzuxx(id);
        model.addAttribute("list",list);
        System.err.println(list);
        return  "dw/chuzuxx";
    }
    //遍历公交信息
    @RequestMapping("querygongjiao")
    @ResponseBody
    public List<Public> querygongjiao(){
        List<Public> list=gbyService.querygongjiao();
        return list;
    }
    //遍历地铁信息
    @RequestMapping("queryditie")
    @ResponseBody
    public List<Metro> queryditie(){
        List<Metro> list=gbyService.queryditie();
        return list;
    }
    //遍历物业特色
    @RequestMapping("querywuye")
    @ResponseBody
    public List<Feature> querywuye(){
        List<Feature> list=gbyService.querywuye();
        return list;
    }
    //遍历配套设施
    @RequestMapping("querypeitao")
    @ResponseBody
    public List<Mating> querypeitao(){
        List<Mating> list=gbyService.querypeitao();
        return list;
    }
    //下拉行业类型
    @RequestMapping("queryhangye")
    @ResponseBody
    public List<Retailindustry> queryhangye(){
        List<Retailindustry> list=gbyService.queryhangye();
        return list;
    }
    //铺面类型二级联动
    @RequestMapping("querypumian")
    @ResponseBody
    public List<Storetype> querypumian(){
        List<Storetype> list =gbyService.querypumian();
        return  list;
    }
    @RequestMapping("querypumian1")
    @ResponseBody
    public List<Pavenmenttype> querypumian1(){
        List<Pavenmenttype> list =gbyService.querypumian1();
        return  list;
    }
    //查房屋情况
    @RequestMapping("queryfangwu")
    @ResponseBody
    public List<Situation> queryfangwu(){
        List<Situation> list =gbyService.queryfangwu();
        return  list;
    }
    @RequestMapping("querychaoxiang")
    @ResponseBody
    public List<Orientation> querychaoxiang(){
        List<Orientation> list =gbyService.querychaoxiang();
        return  list;
    }
    //回显出租
    @RequestMapping("queryByIdchuzu")
    @ResponseBody
    public t_chuzugl queryByIdchuzu(Integer id){
        t_chuzugl dw = gbyService.queryByIdchuzu(id);
        return dw;
    }

    //修改出租
    @RequestMapping("updatechuzu")
    @ResponseBody
    public String updatechuzu(t_chuzugl chuzugl){
        System.out.println(chuzugl);
        gbyService.updatechuzu(chuzugl);
        return "3213";
    }

    @RequestMapping("updateShangX")
    @ResponseBody
    public String updateShangX(String id){
        gbyService.updateShangX(id);
        return "w";
    }
    //变更审核
    @RequestMapping("updateBinG1")
    @ResponseBody
    public String updateBinG(@Param("ids") String ids, @Param("zt")Integer zt, Map map){

        gbyService.updateBinG(ids,zt);
        return "w";
    }
    //批量删除
    @RequestMapping("deleteschuzu")
    @ResponseBody
    public String deleteschuzu(String ids){
        gbyService.deleteschuzu(ids);
        return "updatesuccess";
    }
    //橱窗推荐  取消
    @RequestMapping("/updatechutuidw")
    @ResponseBody
    public String updatechutuidw(String ids){
        gbyService.updatechutuidw(ids);
        return "updatesuccess";
    }

    @RequestMapping("/updateqxchutuidw")
    @ResponseBody
    public String updateqxchutuidw(String ids){
        gbyService.updateqxchutuidw(ids);
        return "updatesuccess";
    }
//----------所有预约   querysuoyou
@RequestMapping("querysuoyou")
@ResponseBody
public List<Map<String,Object>> querysuoyou(){
    List<Map<String,Object>> list =  gbyService.querysuoyou();
    return  list;
}
//批量删除  deleteyuyue
@ResponseBody
@RequestMapping("deleteyuyue")
public void deleteyuyue(String id){
    gbyService.deleteyuyue(id);
}
//查询出售预约  queryChuShou
@RequestMapping("queryChuShou")
@ResponseBody
public List<Map<String,Object>> queryChuShou(){
    List<Map<String,Object>> list =  gbyService.queryChuShou();
    return  list;
}
//批量删除出售预约  deleteyChuShou
@ResponseBody
@RequestMapping("deleteyChuShou")
public void deleteyChuShou(String id){
    gbyService.deleteyChuShou(id);
}
//查询出租预约 queryChuZu
@RequestMapping("queryChuZu")
@ResponseBody
public List<Map<String,Object>> queryChuZu(){
    List<Map<String,Object>> list =  gbyService.queryChuZu();
    return  list;
}
//批量删除出租预约  deleteyChuZu
@ResponseBody
@RequestMapping("deleteyChuZu")
public void deleteyChuZu(String id){
    gbyService.deleteyChuZu(id);
}
}
