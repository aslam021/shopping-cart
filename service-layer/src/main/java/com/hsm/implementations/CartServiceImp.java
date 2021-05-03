package com.hsm.implementations;

import com.hsm.CartService;
import com.hsm.data.CartData;
import com.hsm.repositories.CartRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
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

    @Override
    public List<CartData> getProductsInCart(long customerId) {
        List<CartData> cartData = cartRepository.findByCustomerId(customerId);
        return cartData;
    }

    @Override
    public void removeFromCart(long customerId, long productId) {
        cartRepository.deleteByCustomerIdAndProductId(customerId, productId);
    }

    @Override
    public void updateCount(long customerId, long productId, int productCount) {
        CartData cartData = cartRepository.findByCustomerIdAndProductId(customerId, productId);
        cartRepository.save(new CartData(cartData.getCart_id(), cartData.getCustomerId(), cartData.getProductId(), productCount));
        return;
    }

}
