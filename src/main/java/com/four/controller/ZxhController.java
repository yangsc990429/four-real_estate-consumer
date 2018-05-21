package com.four.controller;

import com.four.service.ZxhService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("zxh")
public class ZxhController {

    @Autowired
    private ZxhService zxhservice;

}
