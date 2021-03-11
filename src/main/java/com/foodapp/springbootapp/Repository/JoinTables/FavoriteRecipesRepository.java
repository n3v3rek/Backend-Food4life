package com.foodapp.springbootapp.Repository.JoinTables;

import com.foodapp.springbootapp.Model.JoinTables.FavoriteRecipes;
import com.foodapp.springbootapp.Model.Tables.Recipe;
import com.foodapp.springbootapp.Model.Tables.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface FavoriteRecipesRepository extends CrudRepository<FavoriteRecipes,Long> {

    Optional<FavoriteRecipes> findByUser_UserIDAndAndRecipe_RecipeID(long userID, long recipeID);
    Optional<FavoriteRecipes> findByUserAndRecipe (User user, Recipe recipe);
     void deleteByUserAndRecipe(User userID, Recipe recipeID);
    List<FavoriteRecipes> findAllByUser_UserID(long userID);
}
