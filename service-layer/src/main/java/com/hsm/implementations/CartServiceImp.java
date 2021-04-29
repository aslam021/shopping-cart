package com.hsm.implementations;

import com.hsm.CartService;
import com.hsm.data.CartData;
import com.hsm.repositories.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CartServiceImp implements CartService {

    @Autowired
    CartRepository cartRepository;

    @Override
    public void addToCart(String p_id, String c_id) {
        long product_id = Long.parseLong(p_id);
        long customer_id = Long.parseLong(c_id);

        Optional<CartData> cartDataOptional = Optional.ofNullable(cartRepository.findByCustomerIdAndProductId(customer_id, product_id));

        if(!cartDataOptional.isPresent()){
            cartRepository.save(new CartData(customer_id, product_id));
        }
    }
}
