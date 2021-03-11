package com.foodapp.springbootapp.Model.EmbeddableKeys;

import org.springframework.data.annotation.Id;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class MealRacipeKey implements Serializable {

    @Id
    @Column(name = "mealID")
    long mealID;

    @Id
    @Column(name = "recipeID")
    long recipeID;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        MealRacipeKey that = (MealRacipeKey) o;
        return mealID == that.mealID &&
                recipeID == that.recipeID;
    }

    @Override
    public int hashCode() {
        return Objects.hash(mealID, recipeID);
    }
}
