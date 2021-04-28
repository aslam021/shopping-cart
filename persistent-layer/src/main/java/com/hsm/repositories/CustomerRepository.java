package com.hsm.repositories;

import com.hsm.data.CustomerData;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends CrudRepository<CustomerData, Long> {
    CustomerData findByEmailAndPassword(String email, String password);
}
