/*
package com.four.controller;

import com.four.entity.Area;
import com.four.entity.Metro;
import com.four.entity.User;
import com.four.service.YangscService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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

        return  request.getSession().getAttribute("quanxianid").toString();
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
        List<Map<String,Object>> list1= (List<Map<String, Object>>) request.getSession().getAttribute("quanxian");
            System.err.println(list1);
        return "updsuccess";
    }
}
*/
