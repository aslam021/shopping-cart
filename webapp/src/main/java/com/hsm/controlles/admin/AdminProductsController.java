package com.hsm.controlles.admin;

import com.hsm.ProductService;
import com.hsm.SpringBootWebApplication;
import com.hsm.data.ProductsData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("admin/products")
public class AdminProductsController {

    @Autowired
    ProductService productService;

    @GetMapping
    public String getProductList(Model model){
        List<ProductsData> productsList = productService.getAllProducts();
        model.addAttribute("productsList", productsList);
        model.addAttribute("admin", SpringBootWebApplication.loggedInAdmin);
        return "/admin/products.jsp";
    }

    @GetMapping("/addNew")
    public String getAddNewProductPage(Model model){
        ProductsData productModel = new ProductsData();
        model.addAttribute(productModel);
        model.addAttribute("admin", SpringBootWebApplication.loggedInAdmin);
        model.addAttribute("page", "addProduct");
        return "/admin/addNewProduct.jsp";
    }

    @PostMapping("/addNew")
    public void addNewProduct(@ModelAttribute("productModel") ProductsData productsData,
                              HttpServletResponse response){
        try {
            response.sendRedirect("addNew");
        }catch (IOException e) {
            e.printStackTrace();
        }
    }
}
