package com.hsm.data;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Table(name = "customers")
@Getter
@Setter
@ToString
public class CustomerData {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long customer_id;
    @Column(unique=true)
    private String email;
    private String password;
    private String name;
    private int contact_num;
    private String address;
}
