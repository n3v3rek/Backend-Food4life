package com.foodapp.springbootapp.Repository.JoinTables;

import com.foodapp.springbootapp.Model.JoinTables.MealRecipe;
import com.foodapp.springbootapp.Model.Tables.Meal;
import com.foodapp.springbootapp.Model.Tables.Recipe;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface MealRecipeRepository extends CrudRepository<MealRecipe,Long> {

    List <MealRecipe> findByMeal (Meal meal);
    Optional<MealRecipe> findByMeal_MealIDAndRecipe_RecipeID(long mealID, long recipeID);
    List<MealRecipe> findAllByMeal_MealID(long mealID);
    Optional<MealRecipe> deleteByMeal_MealIDAndRecipe_RecipeID(long mealID, long recipeID);
    List<MealRecipe> deleteAllByMeal_MealID(long mealID);
}
