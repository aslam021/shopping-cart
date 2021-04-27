package com.hsm.data;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;


@Entity
@Table(name = "categories")
@Getter
@Setter
public class CategoriesData {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long category_id;
    String name;
}
