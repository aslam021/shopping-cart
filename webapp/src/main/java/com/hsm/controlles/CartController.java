package com.hsm.controlles;

import com.hsm.CartService;
import com.hsm.ProductService;
import com.hsm.SpringBootWebApplication;
import com.hsm.data.CartData;
import com.hsm.data.CustomerData;
import com.hsm.data.ProductsData;
import com.hsm.models.CartModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/cart")
public class CartController {
    @Autowired
    CartService cartService;
    @Autowired
    ProductService productService;

    @GetMapping
    public String getCart(Model model){
        CustomerData customerData = SpringBootWebApplication.loggedInUser;
        List<CartData> productsInCart = cartService.getProductsInCart(customerData.getCustomer_id());
        List<CartModel> productModelList = getProductDetails(productsInCart);

        model.addAttribute("productList", productModelList);
        model.addAttribute("customer", customerData);
        model.addAttribute("page", "cart");

        return "cart.jsp";
    }

    private List<CartModel> getProductDetails(List<CartData> productsInCart) {
        List<CartModel> cartModelList = new ArrayList<>();
        for (CartData product : productsInCart) {
            Optional<ProductsData> productData = productService.getById(product.getProductId());
            if (productData.isPresent()){
                cartModelList.add(new CartModel(product.getProductId(),
                        productData.get().getImage(),
                        productData.get().getName(),
                        productData.get().getPrice(),
                        product.getCount()));
            }
        }

        return cartModelList;
    }

    @PostMapping
    @ResponseBody
    public void addToCart(@RequestParam String product_id, @RequestParam String customer_id){
        cartService.addToCart(product_id, customer_id);
    }

    @PutMapping
    public void updateQuantity(@RequestParam String customerId, @RequestParam String productId,
                               @RequestParam String productCount, HttpServletResponse response) {
        cartService.updateCount(Long.parseLong(customerId), Long.parseLong(productId), Integer.parseInt(productCount));
        return;
    }

    @DeleteMapping
    public void removeFromCart(@RequestParam String customerId, @RequestParam String productId,
                               HttpServletResponse response){
        cartService.removeFromCart(Long.parseLong(customerId), Long.parseLong(productId));
        return;
    }
}
