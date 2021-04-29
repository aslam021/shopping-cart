package com.hsm.repositories;

import com.hsm.data.CartData;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CartRepository extends CrudRepository<CartData, Long> {
    CartData findByCustomerIdAndProductId(long customer_id, long product_id);
}
