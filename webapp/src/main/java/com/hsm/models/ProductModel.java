package com.hsm.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
public class ProductModel {
    private long product_id;
    private String image;
    private String name;
    private float price;
}

