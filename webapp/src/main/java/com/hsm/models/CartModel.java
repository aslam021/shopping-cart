package com.hsm.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CartModel {
    private long product_id;
    private String image;
    private String name;
    private float price;
    private int count;
}