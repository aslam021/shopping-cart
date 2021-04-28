package com.hsm.controlles;

import com.hsm.ProductService;
import com.hsm.data.ProductsData;
import com.hsm.models.ProductModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/products")
public class ProductsController {

    @Autowired
    ProductService productService;

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
