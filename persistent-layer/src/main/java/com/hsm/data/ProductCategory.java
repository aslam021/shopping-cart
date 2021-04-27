package com.hsm.data;

import org.hibernate.annotations.Table;

import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import java.io.Serializable;

@Embeddable
class PCategoryData implements Serializable {
    Integer product_id;
    Integer category_id;
}

@Entity
@Table(appliesTo = "product_category")
public class ProductCategory {
    @EmbeddedId
    PCategoryData id;


}
