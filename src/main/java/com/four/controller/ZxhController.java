package com.four.controller;

import com.alibaba.fastjson.JSON;
import com.four.entity.*;
import com.four.service.ZxhService;
import com.four.util.AliyunOSSClientUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("zxh")
public class ZxhController {

    @Autowired
    private ZxhService zxhservice;

    /**
     * 查询会员信息
     * @return
     */
    @RequestMapping("selectHui")
    @ResponseBody
    public String selectHui(){
        List<Member> list = zxhservice.selectHui();
        return JSON.toJSONString(list);
    }

    /**
     * 修改密码
     * @param yuan  原密码
     * @param userpass  修改后密码
     * @param request   登陆的用户
     * @return
     */
    @RequestMapping("updatePass")
    @ResponseBody
    public String updatePass(@RequestParam("yuan") String yuan, @RequestParam("userpass") String userpass, HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        String aa = zxhservice.updatePass(yuan,userpass,user);
        /*ModelAndView model=new ModelAndView();
        model.setView();*/
        return aa;
    }

    /**
     * 跳页面
     * @return
     *//*
    @RequestMapping("tiao")
    public String tiao(){
        return "redirect:four-real_estate-consumer/login";
    }

    /**
     * 查询最大的序号
     * @return
     */
    @RequestMapping("selectMaxXu")
    @ResponseBody
    public String selectMaxXu(){
        Integer maxpai = zxhservice.selectMaxXu();
        return maxpai.toString();
    }

    /**
     * 新增会员等级
     * @param member
     * @return
     */
@RequestMapping("insertMem")
@ResponseBody
public String insertMem(Member member){
        SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        member.setCreatedate(sim.format(new Date()));
        System.err.println(member);
        String aa = zxhservice.insertMem(member);
        return aa;
        }

    /**
     * 修改回显
     * @param id
     * @return
     */
    @RequestMapping("selectMemId")
    @ResponseBody
    public String selectMemId(Integer id){
        Member member = zxhservice.selectMemId(id);
        return JSON.toJSONString(member);
        }

    /**
     * 修改会员等级
     * @param member
     * @return
     */
    @RequestMapping("updateHuiId")
    @ResponseBody
    public String updateHuiId(Member member){
        SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        member.setCreatedate(sim.format(new Date()));
        String fan = zxhservice.updateHuiId(member);
        return fan;
        }

    /**
     * 删除会员等级
     * @param id
     * @return
     */
    @RequestMapping("deleteMemId")
    @ResponseBody
    public String deleteMemId(Integer id){
        String fan = zxhservice.deleteMemId(id);
        return fan;
    }

    /**
     * 批量删除
     * @param ids
     * @return
     */
    @RequestMapping("deleteAllIds")
    @ResponseBody
    public String deleteAllIds(@RequestParam("ids") String ids){
        String fan = zxhservice.deleteAllIds(ids);
        return fan;
    }

    /**
     * 查询商圈
     * @return
     */
    @RequestMapping("selectShang")
    @ResponseBody
    public List<Map<String,Object>> selectShang(){
        List<Map<String,Object>> list = zxhservice.selectShang();
        return list;
    }

    /**
     * 查询父级id为0的地区
     * @return
     */
    @RequestMapping("queryAreall")
    @ResponseBody
    public String queryAreall(){
        List<Area> list = zxhservice.queryAreall();
        System.err.println(list);
        return JSON.toJSONString(list);
    }

    /**
     * 上传图片
     * @param files
     * @return
     */
    @RequestMapping(value="insertPicture",method = RequestMethod.POST, produces = "application/json;charset=utf8")
    @ResponseBody
    public Object insertPicture(@RequestParam("file") MultipartFile[] files){
        String greatBeauty = AliyunOSSClientUtil.GreatBeauty(files[0], files[0].getOriginalFilename());
        Map map = new HashMap(1);
        map.put("a",greatBeauty);
        return map;
    }

    /**
     * 新增商圈
     * @param business
     * @return
     */
    @RequestMapping("insertBusin")
    @ResponseBody
    public String insertBusin(Business business){
        String falg = zxhservice.insertBusin(business);
        return falg;
    }

    /**
     * 删除商圈
     * @param id
     * @return
     */
    @RequestMapping("deleteShangId")
    @ResponseBody
    public String deleteShangId(String id){
        String flag = zxhservice.deleteShangId(id);
        return flag;
    }

    /**
     * 批量删除商图
     * @param ids
     * @return
     */
    @RequestMapping("deleteBusall")
    @ResponseBody
    public String deleteBusall(String ids){
        String flag = zxhservice.deleteBusall(ids);
        return flag;
    }

    /**
     * 回显商圈
     * @param id
     * @return
     */
    @RequestMapping("selectBusId")
    @ResponseBody
    public String selectBusId(Integer id){
        Business business =zxhservice.selectBusId(id);
        System.err.println(business);
        return JSON.toJSONString(business);
    }

    /**
     * 修改商圈
     * @param business
     * @return
     */
    @RequestMapping("updateBusId")
    @ResponseBody
    public String updateBusId(Business business){
        String flag = zxhservice.updateBusId(business);
        return flag;
    }

    /**
     * 查询咨询
     * @return
     */
    @RequestMapping("selectZiXun")
    @ResponseBody
    public List<Map<String,Object>> selectZiXun(){
        List<Map<String,Object>> list = zxhservice.selectZiXun();
        return list;
    }

    /**
     * 删除咨询
     * @param id
     * @return
     */
    @RequestMapping("deleteZiId")
    @ResponseBody
    public String deleteZiId(String id){
        String flag = zxhservice.deleteZiId(id);
        return flag;
    }

    /**
     * 新增咨询
     * @param consultinglist
     * @return
     */
    @RequestMapping("insertZixun")
    @ResponseBody
    public String insertZixun(Consultinglist consultinglist){
        System.err.println(consultinglist);
        consultinglist.setShenhe(2);
        String flag = zxhservice.insertZixun(consultinglist);
        return flag;
    }

    /**
     * 查询咨询分组
     * @return
     */
    @RequestMapping("selectConsultall")
    @ResponseBody
    public String selectConsultall(){
        List<Consultingcontent> list = zxhservice.selectConsultall();
        return JSON.toJSONString(list);
    }

    /**
     * 查询咨询分组对应的内容
     * @return
     */
    @RequestMapping("selectAdvall")
    @ResponseBody
    public String selectAdvall(){
        List<Advisory> lisst = zxhservice.selectAdvall();
        return JSON.toJSONString(lisst);
    }

    /**
     * 批量删除咨询
     * @param ids
     * @return
     */
    @RequestMapping("deleteZixall")
    @ResponseBody
    public String deleteZixall(String ids){
        String flag = zxhservice.deleteZixall(ids);
        return flag;
    }

    /**
     * 修改审核状态
     * @param flag
     * @param ids
     * @return
     */
    @RequestMapping("updateShenz")
    @ResponseBody
    public String updateShenz(Integer flag,String ids){
        String as = zxhservice.updateShenz(flag,ids);
        return as;
    }

    /**
     * 修改咨询回显
     * @param id
     * @return
     */
    @RequestMapping("selectQueryId")
    @ResponseBody
    public String selectQueryId(Integer id){
        Consultinglist consultinglist = zxhservice.selectQueryId(id);
        return JSON.toJSONString(consultinglist);
    }

    /**
     * 修改咨询
     * @param consultinglist
     * @return
     */
    @RequestMapping("updateZiId")
    @ResponseBody
    public String updateZiId(Consultinglist consultinglist){
        String cx = zxhservice.updateZiId(consultinglist);
        return cx;
    }

    /**
     * 查询需要审核的咨询
     * @return
     */
    @RequestMapping("selectShenZiXun")
    @ResponseBody
    public List<Map<String,Object>> selectShenZiXun(){
        List<Map<String,Object>> list = zxhservice.selectShenZiXun();
        return list;
    }

    @RequestMapping("selectFangyuan")
    @ResponseBody
    public List<Map<String,Object>> selectFangyuan(){
        List<Map<String,Object>> list = zxhservice.selectFangyuan();
        return list;
    }

    /**
     * 删除房源出售
     * @param id
     * @return
     */
    @RequestMapping("deleteYuanId")
    @ResponseBody
    public String deleteYuanId(Integer id){
        String flag = zxhservice.deleteYuanId(id);
        return flag;
    }

    /**
     * 批量删除出售房源
     * @param ids
     * @return
     */
    @RequestMapping("deleteIdAll")
    @ResponseBody
    public String deleteIdAll(String ids){
        String flag = zxhservice.deleteIdAll(ids);
        return flag;
    }

    /**
     * 设置为橱窗推荐
     * @param ids
     * @return
     */
    @RequestMapping("updateYuanChuId")
    @ResponseBody
    public String updateYuanChuId(String ids){
        String falg = zxhservice.updateYuanChuId(ids);
        return falg;
    }

    /**
     * 从橱窗中取消推荐
     * @param ids
     * @return
     */
    @RequestMapping("updateDownChuId")
    @ResponseBody
    public String updateDownChuId(String ids){
        String flag = zxhservice.updateDownChuId(ids);
        return flag;
    }

    /**
     * 查询出售类型
     * @return
     */
    @RequestMapping("queryApart")
    @ResponseBody
    public String queryApart(){
        List<Apartment> list = zxhservice.queryApart();
        return JSON.toJSONString(list);
    }

    /**
     * 查询会员性质为装修公司的
     * @return
     */
    @RequestMapping("queryZhuang")
    @ResponseBody
    public List<Map<String,Object>> queryZhuang(){
        List<Map<String,Object>> list = zxhservice.queryZhuang();
        return list;
    }

    /**
     * 删除所有选中的装修公司的信息
     * @param ids
     * @return
     */
    @RequestMapping("deleteZhuangIdAll")
    @ResponseBody
    public String deleteZhuangIdAll(String ids){
        String flag = zxhservice.deleteZhuangIdAll(ids);
        return flag;
    }

    /**
     * 查询装修公司对应的权限
     * @return
     */
    @RequestMapping("selectQuan")
    @ResponseBody
    public String selectQuan(){
        List<Huiquan> list = zxhservice.selectQuan();
        return JSON.toJSONString(list);
    }

    /**
     * 查询所选装修用户的信息
     * @param id
     * @return
     */
    @RequestMapping("selectXiuId")
    @ResponseBody
    public String selectXiuId(Integer id){
        Huiji huiji = zxhservice.selectXiuId(id);
        return JSON.toJSONString(huiji);
    }

    /**
     * 查询该用户的装修公司的认证
     * @param id
     * @return
     */
    @RequestMapping("selectQueRen")
    @ResponseBody
    public String selectQueRen(Integer id){
        Huirenshen huirenshen = zxhservice.selectQueRen(id);
        return JSON.toJSONString(huirenshen);
    }

    /**
     * 修改装修公司的基本信息
     * @param huiji
     * @return
     */
    @RequestMapping("updateZhuYuanId")
    @ResponseBody
    public String updateZhuYuanId(Huiji huiji){
        String flag = zxhservice.updateZhuYuanId(huiji);
        return flag;
    }

    /**
     * 修改装修公司的认证信息
     * @param huirenshen
     * @return
     */
    @RequestMapping("updateRenZhenId")
    @ResponseBody
    public String updateRenZhenId(Huirenshen huirenshen){
        String flag = zxhservice.updateRenZhenId(huirenshen);
        return flag;
    }

    /**
     * 修改装修公司营业认证信息
     * @param huirenshen
     * @return
     */
    @RequestMapping("updateRenQuanId")
    @ResponseBody
    public String updateRenQuanId(Huirenshen huirenshen){
        String flag = zxhservice.updateRenQuanId(huirenshen);
        return flag;
    }

    @RequestMapping("updateJineId")
    @ResponseBody
    public String updateJineId(Huijin huijin){
        HttpServletRequest request= ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String addr = request.getRemoteAddr();
        String flag = zxhservice.updateJineId(huijin,addr);
        return flag;
    }

}
