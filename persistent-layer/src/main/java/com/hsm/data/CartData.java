package com.hsm.data;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "cart")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CartData {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long cart_id;
    private long customerId;
    private long productId;
    private int count;

    public CartData(long customer_id, long product_id){
        this.customerId = customer_id;
        this.productId = product_id;
        this.count = 1;
    }

    public CartData(long customer_id, long product_id, int count){
        this.customerId = customer_id;
        this.productId = product_id;
        this.count = count;
    }
}