package com.hsm.controlles.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("admin/products")
public class AdminProductsController {
    @GetMapping
    @ResponseBody
    public String getP(){
        return "im admin prodyuct";
    }
}
