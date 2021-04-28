package com.hsm.implementations;

import com.hsm.ProductService;
import com.hsm.data.ProductsData;
import com.hsm.repositories.ProductsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImp implements ProductService {

    @Autowired
    ProductsRepository productsRepository;

    @Override
    public List<ProductsData> getAllProducts() {
        return (List<ProductsData>) productsRepository.findAll();
    }
}
