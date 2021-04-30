package com.hsm;

import com.hsm.data.ProductsData;

import java.util.List;
import java.util.Optional;

public interface ProductService {
    List<ProductsData> getAllProducts();
    Optional<ProductsData> getById(long productId);
    ProductsData addNewProduct(ProductsData productsData);
}
