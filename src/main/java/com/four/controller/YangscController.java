/*
package com.four.controller;

import com.four.entity.Area;
import com.four.service.YangscService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
    public String updateqvyv(Area area){

        yangscService.updateqvyv(area);
        return "success";
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
}
*/
