package com.hsm;

import com.hsm.data.CartData;
import java.util.List;

public interface CartService {
    void addToCart(String product_id, String customer_id);
    List<CartData> getProductsInCart(long customer_id);
    void removeFromCart(long customerId, long productId);
}
