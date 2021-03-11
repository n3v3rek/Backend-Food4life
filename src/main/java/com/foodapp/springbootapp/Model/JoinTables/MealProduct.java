package com.foodapp.springbootapp.Model.JoinTables;

import com.foodapp.springbootapp.Model.Tables.Meal;
import com.foodapp.springbootapp.Model.Tables.Product;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Meal_Product")
public class MealProduct implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long MealProductKey;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(name = "productID")
    private Product product;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(name = "mealID")
    private Meal meal;

    public MealProduct() { }

    public MealProduct(Product product, Meal meal) {
        this.product = product;
        this.meal = meal;
    }

    public long getMealProductKey() {
        return MealProductKey;
    }

    public void setMealProductKey(long mealProductKey) {
        MealProductKey = mealProductKey;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Meal getMeal() {
        return meal;
    }

    public void setMeal(Meal meal) {
        this.meal = meal;
    }
}
