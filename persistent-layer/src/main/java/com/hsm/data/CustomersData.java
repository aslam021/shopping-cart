package com.hsm.data;

import javax.persistence.*;

@Entity
@Table(name = "customers")
public class CustomersData {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long customer_id;
    String email;
    String password;
    String name;
    Integer contact_num;
    String address;
}
