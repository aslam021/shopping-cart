package com.hsm.implementations;

import com.hsm.ProductService;
import com.hsm.data.ProductsData;
import com.hsm.repositories.ProductsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductServiceImp implements ProductService {

    @Autowired
    ProductsRepository productsRepository;

    @Override
    public List<ProductsData> getAllProducts() {
        return (List<ProductsData>) productsRepository.findAll();
    }

    @Override
    public Optional<ProductsData> getById(long productId) {
        return productsRepository.findById(productId);
    }

    @Override
    public ProductsData addNewProduct(ProductsData productsData) {
        return productsRepository.save(productsData);
    }

    @Override
    public void updateProduct(ProductsData productsData, long productId) {

        productsData.setProduct_id(productId);
        if (productsData.getImage().equals("")){
            productsData = getProductWithExistingImageAdded(productsData, productId);
        }

        productsRepository.save(productsData);
    }

    private ProductsData getProductWithExistingImageAdded(ProductsData productsData, long productId) {
        Optional<ProductsData> existingProductData = productsRepository.findById(productId);
        productsData.setImage(existingProductData.get().getImage());
        return productsData;
    }

    @Override
    public void deleteProduct(long product_id) {
        productsRepository.deleteById(product_id);
    }
}
