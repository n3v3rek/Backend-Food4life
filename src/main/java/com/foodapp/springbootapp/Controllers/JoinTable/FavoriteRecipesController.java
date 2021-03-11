package com.foodapp.springbootapp.Controllers.JoinTable;

import com.foodapp.springbootapp.Model.JoinTables.FavoriteRecipes;
import com.foodapp.springbootapp.Model.Tables.Recipe;
import com.foodapp.springbootapp.Model.Tables.User;
import com.foodapp.springbootapp.Repository.JoinTables.FavoriteRecipesRepository;
import com.foodapp.springbootapp.Repository.Tables.RecipeRepository;
import com.foodapp.springbootapp.Repository.Tables.UserRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Slf4j
@RestController
@RequestMapping("/api/")
public class FavoriteRecipesController {

    @Autowired
    FavoriteRecipesRepository favoriteRecipesRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    RecipeRepository recipeRepository;

    @GetMapping("/favourite/recipes/{userID}/{recipeID}")
    public ResponseEntity<FavoriteRecipes> getFavouriteRecipeByUserIDANDRecipeID(@PathVariable("userID") long userID, @PathVariable("recipeID") long recipeID) {

        Optional<FavoriteRecipes> favoriteRecipesData = favoriteRecipesRepository.findByUser_UserIDAndAndRecipe_RecipeID(userID, recipeID);

        if (favoriteRecipesData.isPresent()) {
            return new ResponseEntity<>(favoriteRecipesData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/favourite/recipes/users/{userID}")
    public ResponseEntity<List<Recipe>> getFavouriteRecipeByUserId(@PathVariable("userID") long userID) {

        List<FavoriteRecipes> favoriteRecipes = new ArrayList<>();
        List<Recipe> recipes = new ArrayList<>();

        try {

            favoriteRecipesRepository.findAllByUser_UserID(userID).forEach(favoriteRecipes::add);
            ;
            ;
            for (int i = 0; i < favoriteRecipes.size(); i++) {
                recipes.add(favoriteRecipes.get(i).getRecipe());
            }

            if (recipes.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(recipes, HttpStatus.OK);

        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }


    @PostMapping(value = "/favourite/recipes")
    public ResponseEntity<FavoriteRecipes> postFavouriteRecipe(@RequestBody FavoriteRecipes favoriteRecipes) {

        try {
            FavoriteRecipes _favoriteRecipes = new FavoriteRecipes(favoriteRecipes.getUser(), favoriteRecipes.getRecipe());
            Optional<Recipe> _recipe = recipeRepository.findById(favoriteRecipes.getRecipe().getRecipeID());
            favoriteRecipesRepository.save(_favoriteRecipes);
            _recipe.get().setLikesCounter(_recipe.get().getLikesCounter() + 1);
            recipeRepository.save(_recipe.get());
            return new ResponseEntity<>(_favoriteRecipes, HttpStatus.CREATED);

        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/favourite/recipes/{userID}/{recipeID}")
    public ResponseEntity<HttpStatus> deleteFavouriteRecipeByUserIDANDRecipeID(@PathVariable("userID") long userID, @PathVariable("recipeID") long recipeID) {
        log.info("Compunting...");
        try {

            Optional<User> _user = userRepository.findById(userID);
            Optional<Recipe> _recipe = recipeRepository.findById(recipeID);
            Optional <FavoriteRecipes> fr = favoriteRecipesRepository.findByUserAndRecipe(_user.get(), _recipe.get());
            favoriteRecipesRepository.deleteById(fr.get().getUserRecipeKey());
            _recipe.get().setLikesCounter(_recipe.get().getLikesCounter() - 1);
            recipeRepository.save(_recipe.get());
            return new ResponseEntity<>(HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @PutMapping("/favourite/recipes/{userID}/{recipeID}")
    public ResponseEntity<FavoriteRecipes> updateFavouriteRecipe(@PathVariable("userID") long userID, @PathVariable("recipeID") long recipeID, @RequestBody FavoriteRecipes favoriteRecipes) {

        Optional<FavoriteRecipes> favoriteRecipesData = favoriteRecipesRepository.findByUser_UserIDAndAndRecipe_RecipeID(userID, recipeID);

        if (favoriteRecipesData.isPresent()) {

            FavoriteRecipes _favoriteRecipes = favoriteRecipesData.get();

            _favoriteRecipes.setRecipe(favoriteRecipes.getRecipe());
            _favoriteRecipes.setUser(favoriteRecipes.getUser());

            return new ResponseEntity<>(favoriteRecipesRepository.save(_favoriteRecipes), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
