package com.four.controller;

import com.four.entity.Area;
import com.four.service.YangscService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("yangsc")
public class YangscController {

    @Autowired
    private YangscService yangscService;

    @RequestMapping("addqvyv")
    @ResponseBody
    public String addqvyv(Area area){
        System.err.println(area.getName()+""+area.getShouzimu()+""+area.getXuhao()+""+area.getZuobiao()+""+area.getHotstatus());
        yangscService.addqvyv(area);
        return "success";
    }
}
