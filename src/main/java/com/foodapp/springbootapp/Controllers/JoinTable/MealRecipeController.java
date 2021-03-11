package com.foodapp.springbootapp.Controllers.JoinTable;

import com.foodapp.springbootapp.Model.JoinTables.MealRecipe;
import com.foodapp.springbootapp.Model.Tables.Meal;
import com.foodapp.springbootapp.Model.Tables.Recipe;
import com.foodapp.springbootapp.Repository.JoinTables.MealRecipeRepository;
import com.foodapp.springbootapp.Repository.Tables.MealRepository;
import com.foodapp.springbootapp.Repository.Tables.RecipeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/")
public class MealRecipeController {

    @Autowired
    MealRecipeRepository mealRecipeRepository;

    @Autowired
    MealRepository mealRepository;

    @Autowired
    RecipeRepository recipeRepository;

    @GetMapping("/meals/recipes/{mealID}/{recipeID}")
    public ResponseEntity<MealRecipe> getMealRecipeByMealIDANDRecipeID(@PathVariable("mealID") long mealID, @PathVariable("recipeID") long recipeID){

        Optional<MealRecipe> mealRecipeData = mealRecipeRepository.findByMeal_MealIDAndRecipe_RecipeID(mealID,recipeID);

        if (mealRecipeData.isPresent()){
            return new ResponseEntity<>(mealRecipeData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping("/meals/recipes/all")
    public ResponseEntity<List<MealRecipe>> getMealRecipesByMealId(@RequestBody List <Long> mealID){

        List<MealRecipe> mealRecipes = new ArrayList<>();

        try{
            mealID.forEach( row ->
            {
                Optional<Meal> _meal  = mealRepository.findById(row);
                mealRecipeRepository.findByMeal(_meal.get()).forEach(mealRecipes::add);
            }
            );

            if (mealRecipes.isEmpty()){
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(mealRecipes,HttpStatus.OK);

        } catch (Exception e)
        {
            return new ResponseEntity<>(null,HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PostMapping(value = "/meals/recipes/{mealID}/{recipeID}")
    public ResponseEntity<MealRecipe> postMealRecipe(@PathVariable ("mealID") long mealID,@PathVariable("recipeID") long recipeID){

        try{
            MealRecipe _mealRecipe = new MealRecipe();

            Optional<Meal> mealData = mealRepository.findById(mealID);
            Optional<Recipe> recipeData = recipeRepository.findById(recipeID);

            if (mealData.isPresent() && recipeData.isPresent() ) {

                _mealRecipe.setMeal(mealData.get());
                _mealRecipe.setRecipe(recipeData.get());

                mealRecipeRepository.save(_mealRecipe);
                return new ResponseEntity<>(_mealRecipe,HttpStatus.CREATED);

            }else{

                return new ResponseEntity<>(HttpStatus.NOT_FOUND);

            }
        } catch (Exception e){
            return new ResponseEntity<>(null,HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/meals/recipes/{mealID}/{recipeID}")
    public ResponseEntity<HttpStatus> deleteMealRecipeByMealIDANDRecipeID(@PathVariable("mealID") long mealID, @PathVariable("recipeID") long recipeID) {

        try {
            mealRecipeRepository.deleteByMeal_MealIDAndRecipe_RecipeID(mealID, recipeID);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/meals/recipes/{mealID}")
    public ResponseEntity<HttpStatus> deleteMealRecipeByMealID(@PathVariable("mealID") long mealID) {

        try {
            mealRecipeRepository.deleteAllByMeal_MealID(mealID);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @PutMapping("/meals/recipes/{mealID}/{recipeID}")
    public ResponseEntity<MealRecipe> updateMealRecipe(@PathVariable("mealID") long mealID,@PathVariable("recipeID") long recipeID, @RequestBody MealRecipe mealRecipe){

        Optional<MealRecipe> mealRecipeData = mealRecipeRepository.findByMeal_MealIDAndRecipe_RecipeID(mealID, recipeID);

        if (mealRecipeData.isPresent()){

            MealRecipe _mealRecipe = mealRecipeData.get();

            _mealRecipe.setMeal(mealRecipe.getMeal());
            _mealRecipe.setRecipe(mealRecipe.getRecipe());

            return new ResponseEntity<>(mealRecipeRepository.save(_mealRecipe),HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
