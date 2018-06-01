package com.four.controller;

import com.four.entity.*;
import com.four.service.YangscService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("yangsc")
public class YangscController {

    @Autowired
    private YangscService yangscService;

    @RequestMapping("addqvyv")
    @ResponseBody
    public String addqvyv(Area area){

        yangscService.addqvyv(area);

        return "success";
    }
    @RequestMapping("queryqvyvList")
    @ResponseBody
    public List queryqvyvList(){
        List list  = yangscService.queryqvyvList();
        return list;
    }
    @RequestMapping("deleteqvyv")
    @ResponseBody
    public String deleteqvyv(String ids){
        yangscService.deleteqvyv(ids);
        return "sueecss";
    }
    @RequestMapping("addzi")
    @ResponseBody
    public String addzi(Area area){
        System.err.println(area.getPid()+""+area.getName()+""+area.getShouzimu()+""+area.getXuhao()+""+area.getZuobiao()+""+area.getHotstatus());
        yangscService.addzi(area);
        return "sueecss";
    }

    //回显
    @RequestMapping("queryqvyv")
    @ResponseBody
    public Area queryqvyv(Integer id){

        Area area= yangscService.queryqvyv(id);
        return area;
    }
    //修改
    @RequestMapping("updateqvyv")
    @ResponseBody
    public String updateqvyv(Area area,HttpServletRequest request){
        yangscService.updateqvyv(area);
        return  "success";
    }
    //回显子
    @RequestMapping("queryqvyvzi")
    @ResponseBody
    public List queryqvyvzi(Integer id){

        List area= yangscService.queryqvyvzi(id);
        return area;
    }
    //修改子
    @RequestMapping("updatezi")
    @ResponseBody
    public String updatezi(Area area){
        area.setPid(area.getPid().split(",")[0].toString());
        System.out.println(area);
        yangscService.updatezi(area);
        return "success";
    }
    @RequestMapping("querymokuai")
    @ResponseBody
    public String querymokuai(Metro metro, HttpServletRequest request){
        User user= (User) request.getSession().getAttribute("user");
        List<Map<String,Object>> list=yangscService.queryQuxan(user.getUserid());
        request.getSession().setAttribute("quanxian",list);
        //   List<Map<String,Object>> list1= (List<Map<String, Object>>) request.getSession().getAttribute("quanxian");
        //System.err.println(list1);
        return "updsuccess";
    }
    //查询设计
    @RequestMapping("queryjiList")
    @ResponseBody
    public List queryjiList(@RequestParam("zhanghao") String zhang){
        System.err.println("123"+"asdasdas");
        List<Map<String,Object>> list=yangscService.queryshejiList(zhang);
        System.err.println(list);
        return list;
    }
    //查询设计
    @RequestMapping("updateSeji")
    @ResponseBody
    public String updateSeji(Huiji  huiji){
        System.err.println(huiji);


        yangscService.updateSeji(huiji);
        return "asdas";
    }
    //查询设计
    @RequestMapping("queryhxrenzheng")
    @ResponseBody
    public Huirenzhuang queryhxrenzheng(Integer  id){
        System.err.println(""+id);
        Huirenzhuang huirenzhuang=yangscService.queryhxrenzheng(id);
        System.err.println("saasdasda"+huirenzhuang);
        return huirenzhuang;
    }
    @RequestMapping("updateJineId")
    @ResponseBody
    public String updateJineId(Huijin huijin){
        HttpServletRequest request= ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String addr = request.getRemoteAddr();

        String flag = yangscService.updateJineId(huijin,addr);
        return flag;
    }
    @RequestMapping("quanxianList")
    @ResponseBody
    public List quanxianList(){

        List<Jurisdiction> list = yangscService.quanxianList();
        return list;
    }
    @RequestMapping("queryUser")
    @ResponseBody
    public String queryUser(String username){

        String  falg = yangscService.queryUser(username);
        return falg;
    }
    @RequestMapping("addquanxian")
    @ResponseBody
    public String addquanxian(String username,String pid,String userpass,String name){

       /* String  falg = yangscService.queryUser(username);*/
        yangscService.addquanxian(username,pid,userpass,name);
        return "";
    }
    @RequestMapping("queryguanList")
    @ResponseBody
    public List queryguanList(){

        List<User>list=  yangscService.queryguanList();
        return list;
    }
    @RequestMapping("deleteGl")
    @ResponseBody
    public String deleteGl(String ids){

        yangscService.deleteGl(ids);
        return "sss";
    }
    @RequestMapping("queryqxHx")
    @ResponseBody
    public Map<String,Object> queryqxHx(Integer userid){

        Map<String,Object>map=  yangscService.queryqxHx(userid);
        return map;
    }
    @RequestMapping("updateQx")
    @ResponseBody
    public String updateQx(Integer userid,String username,String pid,String userpass,String name){

        yangscService.updateQx(userid,username,pid,userpass,name);
        return "success";
    }
    @RequestMapping("deleteZhuangIdAll")
    @ResponseBody
    public String deleteZhuangIdAll(String ids){

        yangscService.deleteZhuangIdAll(ids);
        return "success";
    }

}
