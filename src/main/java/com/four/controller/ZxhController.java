/*
package com.four.controller;

import com.alibaba.fastjson.JSON;
import com.four.entity.Member;
import com.four.entity.User;
import com.four.service.ZxhService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("zxh")
public class ZxhController {
    @Autowired
    private ZxhService zxhservice;

    */
/**
     * 查询会员信息
     * @return
     *//*

@RequestMapping("selectHui")
@ResponseBody
public String selectHui(){
        List<Member> list = zxhservice.selectHui();
        return JSON.toJSONString(list);
        }

*/
/**
 * 修改密码
 * @param yuan  原密码
 * @param userpass  修改后密码
 * @param request   登陆的用户
 * @return
 *//*

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

*/
/**
 * 查询最大的序号
 * @return
 *//*

@RequestMapping("selectMaxXu")
@ResponseBody
public String selectMaxXu(){
        Integer maxpai = zxhservice.selectMaxXu();
        return maxpai.toString();
        }

@RequestMapping("insertMem")
@ResponseBody
public String insertMem(Member member){
        SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        member.setCreatedate(sim.format(new Date()));
        System.err.println(member);
        String aa = zxhservice.insertMem(member);
        return aa;
        }

@RequestMapping("selectMemId")
@ResponseBody
public String selectMemId(Integer id){
        Member member = zxhservice.selectMemId(id);
        return JSON.toJSONString(member);
        }

@RequestMapping("updateHuiId")
@ResponseBody
public String updateHuiId(Member member){
        SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        member.setCreatedate(sim.format(new Date()));
        String fan = zxhservice.updateHuiId(member);
        return fan;
        }

        }

*/
