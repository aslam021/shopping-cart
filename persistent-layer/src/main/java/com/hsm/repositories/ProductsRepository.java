package com.hsm.repositories;


import com.hsm.data.ProductsData;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProductsRepository extends CrudRepository<ProductsData, Long> {
}
