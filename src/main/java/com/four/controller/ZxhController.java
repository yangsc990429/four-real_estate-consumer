/*
package com.four.controller;

import com.alibaba.fastjson.JSON;
import com.four.entity.Area;
import com.four.entity.Business;
import com.four.entity.Member;
import com.four.entity.User;
import com.four.service.ZxhService;
import com.four.util.AliyunOSSClientUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
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
        return aa;
    }

*/
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

    @RequestMapping("updateBusId")
    @ResponseBody
    public String updateBusId(Business business){
        String flag = zxhservice.updateBusId(business);
        return flag;
    }
}

*/
