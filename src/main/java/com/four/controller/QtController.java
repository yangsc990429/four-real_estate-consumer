package com.four.controller;

import com.alibaba.fastjson.JSON;
import com.aliyuncs.exceptions.ClientException;
import com.four.entity.User;
import com.four.service.LfqService;
import com.four.util.AlidayvDx;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("qt")
public class QtController {


    @Autowired
    private LfqService lfqService;

    //发送验证码
    @RequestMapping("fasongyzm")
    @ResponseBody
    public String fasongyzm(HttpServletRequest req, String phone) throws ClientException {

        String sjh = lfqService.fasongyzm(phone);
        if(sjh ==null || "".equals(sjh)){
            AlidayvDx.alidayvdx(req,phone);
            return "yzm";
        }
        return "json";
    }


    //注册
    @RequestMapping("zhuceuser")
    @ResponseBody
    public String zhuceuser(User user, HttpServletRequest request) {

        Object liufengqi = request.getSession().getAttribute("liufengqi");
        if (user.getYanzhengma() !=null && !"".equals(user.getYanzhengma()) && user.getYanzhengma().equals(liufengqi)){
            lfqService.zhuceuser(user);
            return "addsuccess";
        }else {
            return "error";
        }
    }

    //登陆
    @RequestMapping("querydengluuser")
    @ResponseBody
    public String querydengluuser(User user, Model model, HttpServletRequest request){
        String foul = lfqService.querydengluuser(user);
        String[] split = foul.split(",");
        model.addAttribute("name",split[1]);
        request.getSession().setAttribute("name",split[1]);
        if (foul!="mimacuowu"&&foul!="yhsjkong"){
            return "success";
        }else {
            return foul;
        }
    }


    //查询基本资料
    @RequestMapping("queryuserjbzil")
    @ResponseBody
    public String queryuserjbzil(String name){

        User zb = lfqService.queryuserjbzil(name);

        return JSON.toJSONString(zb);
    }

}
