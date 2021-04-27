package com.hsm.data;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "products")
@Getter
@Setter
@ToString
public class ProductsData {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long product_id;
    String name;
    String image;
    float price;
    int count;
    float discount;
}
