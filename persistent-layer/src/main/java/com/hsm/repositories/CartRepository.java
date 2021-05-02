package com.hsm.repositories;

import com.hsm.data.CartData;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartRepository extends CrudRepository<CartData, Long> {
    CartData findByCustomerIdAndProductId(long customer_id, long product_id);
    List<CartData> findByCustomerId(long customer_id);
    void deleteByCustomerIdAndProductId(long customer_id, long product_id);
}
