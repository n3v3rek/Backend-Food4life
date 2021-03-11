package com.foodapp.springbootapp.Model.JoinTables;

import com.foodapp.springbootapp.Model.Tables.Meal;
import com.foodapp.springbootapp.Model.Tables.Recipe;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Meal_Recipe")
public class MealRecipe implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long MealRecipeKey;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(name = "recipeID")
    private Recipe recipe;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(name = "mealID")
    private Meal meal;

    public MealRecipe() { }

    public MealRecipe(Recipe recipe, Meal meal) {
        this.recipe = recipe;
        this.meal = meal;
    }

    public long getMealRecipeKey() {
        return MealRecipeKey;
    }

    public void setMealRecipeKey(long mealRecipeKey) {
        MealRecipeKey = mealRecipeKey;
    }

    public Recipe getRecipe() {
        return recipe;
    }

    public void setRecipe(Recipe recipe) {
        this.recipe = recipe;
    }

    public Meal getMeal() {
        return meal;
    }

    public void setMeal(Meal meal) {
        this.meal = meal;
    }
}
