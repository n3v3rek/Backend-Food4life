package com.foodapp.springbootapp.Controllers.Table;

import com.foodapp.springbootapp.Model.Tables.Recipe;
import com.foodapp.springbootapp.Model.Tables.User;
import com.foodapp.springbootapp.Repository.Tables.RecipeRepository;
import com.foodapp.springbootapp.Repository.Tables.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/")
public class RecipeController {

    @Autowired
    RecipeRepository recipeRepository;

    @Autowired
    UserRepository userRepository;

    @GetMapping("/recipes")
    public ResponseEntity<List<Recipe>> getAllRecipes(){

        List<Recipe> recipes = new ArrayList<>();

        try{

            recipeRepository.findAll().forEach(recipes::add);

            if (recipes.isEmpty()){
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(recipes,HttpStatus.OK);

        } catch (Exception e)
        {
            return new ResponseEntity<>(null,HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/recipes/{recipeID}")
    public ResponseEntity<Recipe> getRecipeById(@PathVariable("recipeID") long recipeID){

        Optional<Recipe> recipeData = recipeRepository.findById(recipeID);

        if (recipeData.isPresent()){
            return new ResponseEntity<>(recipeData.get(),HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/recipes/status/{status}")
    public ResponseEntity<List<Recipe>> getRecipeByStatus(@PathVariable("status") String status){

        List<Recipe> recipes = new ArrayList<>();

        try{

            recipeRepository.findAllByStatus(status).forEach(recipes::add);

            if (recipes.isEmpty()){
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(recipes,HttpStatus.OK);

        } catch (Exception e)
        {
            return new ResponseEntity<>(null,HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/recipes/top/ten")
    public ResponseEntity<List<Recipe>> getTopTenRecipes(){

        List<Recipe> recipes = new ArrayList<>();
        List<Recipe> topTenRecipes = new ArrayList<>();

        try{

            recipeRepository.findAllByOrderByLikesCounterDesc().forEach(recipes::add);

            for (int i = 0;i<recipes.size();i++){
                if (topTenRecipes.size() < 10){
                    topTenRecipes.add(recipes.get(i));
                }
            }

            if (recipes.isEmpty()){
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(recipes,HttpStatus.OK);

        } catch (Exception e)
        {
            return new ResponseEntity<>(null,HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PostMapping(value = "/recipes/{userID}")
    public ResponseEntity<Recipe> postRecipe(@RequestBody Recipe recipe, @PathVariable ("userID") long userID){

        try{
            Recipe _recipe = new Recipe(recipe.getName(),recipe.getContentOfRecipe(),recipe.getIngredients(),recipe.getCreationDate(),recipe.getKilocalorie(),recipe.getProtein(),recipe.getCarbohydrates(),recipe.getFats(),recipe.getWeight(),recipe.getDescription(),recipe.getLikesCounter(),recipe.getStatus());

            Optional<User> userData = userRepository.findById(userID);

            if (userData.isPresent()) {

                _recipe.setUser(userData.get());
                recipeRepository.save(_recipe);
                return new ResponseEntity<>(_recipe,HttpStatus.CREATED);

            }else{

                return new ResponseEntity<>(HttpStatus.NOT_FOUND);

            }
        } catch (Exception e){
            return new ResponseEntity<>(null,HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/recipes/{recipeID}")
    public ResponseEntity<HttpStatus> deleteRecipe(@PathVariable("recipeID") long recipeID){

        try{
            recipeRepository.deleteById(recipeID);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e){
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/recipes")
    public ResponseEntity<HttpStatus> deleteAllProduct(){

        try{
            recipeRepository.deleteAll();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e){
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @PutMapping("/recipes/{recipeID}")
    public ResponseEntity<Recipe> updateProduct(@PathVariable("recipeID") long recipeID, @RequestBody Recipe recipe){

        Optional<Recipe> recipeData = recipeRepository.findById(recipeID);

        if (recipeData.isPresent()){

            Recipe _recipe = recipeData.get();

            _recipe.setName(recipe.getName());
            _recipe.setContentOfRecipe(recipe.getContentOfRecipe());
            _recipe.setIngredients(recipe.getIngredients());
            _recipe.setCreationDate(recipe.getCreationDate());
            _recipe.setKilocalorie(recipe.getKilocalorie());
            _recipe.setProtein(recipe.getProtein());
            _recipe.setCarbohydrates(recipe.getCarbohydrates());
            _recipe.setFats(recipe.getFats());
            _recipe.setWeight(recipe.getWeight());
            _recipe.setDescription(recipe.getDescription());
            _recipe.setLikesCounter(recipe.getLikesCounter());
            _recipe.setStatus(recipe.getStatus());

            return new ResponseEntity<>(recipeRepository.save(_recipe),HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
