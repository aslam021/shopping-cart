package com.hsm.controlles;

import com.hsm.CartService;
import com.hsm.data.CustomerData;
import com.hsm.models.LoginModel;
import com.hsm.models.ProductModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/cart")
@ResponseBody
public class CartController {
    @Autowired
    CartService cartService;

    @PostMapping
    public void addToCart(@RequestParam String product_id, @RequestParam String customer_id){
        cartService.addToCart(product_id, customer_id);
    }
}
