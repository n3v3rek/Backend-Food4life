package com.foodapp.springbootapp.Model.EmbeddableKeys;

import org.springframework.data.annotation.Id;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class MealProductKey implements Serializable {

    @Id
    @Column(name = "mealID")
    long mealID;

    @Id
    @Column(name = "productID")
    long productID;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        MealProductKey that = (MealProductKey) o;
        return mealID == that.mealID &&
                productID == that.productID;
    }

    @Override
    public int hashCode() {
        return Objects.hash(mealID, productID);
    }
}
