package com.hsm.controlles;

import com.hsm.LoginService;
import com.hsm.ProductService;
import com.hsm.SpringBootWebApplication;
import com.hsm.data.CustomerData;
import com.hsm.data.ProductsData;
import com.hsm.models.LoginModel;
import com.hsm.models.ProductModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@ControllerAdvice
@RequestMapping("/products")
public class ProductsController {

    @Autowired
    ProductService productService;

    @Autowired
    LoginService loginService;

    @GetMapping
    public String getProducts(Model model){

        List<ProductsData> products = productService.getAllProducts();
        List<ProductModel> productModelList = getNecessary(products);
        model.addAttribute("productList", productModelList);

        return "index.jsp";
    }

    private List<ProductModel> getNecessary(List<ProductsData> products) {
        List<ProductModel> productList = new ArrayList<>();

        for (ProductsData product: products){
            productList.add(new ProductModel(product.getImage(), product.getName(), product.getPrice()));
        }

        return productList;
    }
}
