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
import java.util.Optional;

@Controller
@RequestMapping("admin/products")
public class AdminProductsController {

    @Autowired
    ProductService productService;

    @GetMapping
    public String getProductList(Model model){
        List<ProductsData> productsList = null;
        productsList = productService.getAllProducts();
        model.addAttribute("productsList", productsList);
        model.addAttribute("admin", SpringBootWebApplication.loggedInAdmin);
        return "/admin/products.jsp";
    }

    @DeleteMapping
    public void deleteProduct(@RequestParam String productId, Model model,
                              HttpServletResponse response){
        productService.deleteProduct(Long.parseLong(productId));
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
        productService.addNewProduct(productsData);
        try {
            response.sendRedirect("addNew");
        }catch (IOException e) {
            e.printStackTrace();
        }
    }

    @GetMapping("/update/{productId}")
    public String getUpdateProductPage(@PathVariable("productId") String productId, Model model,
                                HttpServletResponse response){
        Optional<ProductsData> productData = productService.getById(Long.parseLong(productId));
        model.addAttribute("productData", productData.get());
        model.addAttribute("admin", SpringBootWebApplication.loggedInAdmin);
        model.addAttribute("page", "addProduct");
        return "/admin/updateProduct.jsp";
    }

    @PostMapping("/update/{productId}")
    public void updateProduct(@PathVariable("productId") String productId, Model model,
                              @ModelAttribute("productModel") ProductsData productsData,
                              HttpServletResponse response){

        productService.updateProduct(productsData, Long.parseLong(productId));

        try {
            response.sendRedirect("/webapp_war/admin/products");
        }catch (IOException e) {
            e.printStackTrace();
        }
    }
}
