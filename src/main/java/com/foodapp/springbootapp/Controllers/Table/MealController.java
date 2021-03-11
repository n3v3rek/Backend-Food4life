package com.foodapp.springbootapp.Controllers.Table;

import com.foodapp.springbootapp.Model.Tables.*;
import com.foodapp.springbootapp.Repository.Tables.DietRepository;
import com.foodapp.springbootapp.Repository.Tables.MealRepository;
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
public class MealController {

    @Autowired
    MealRepository mealRepository;

    @Autowired
    DietRepository dietRepository;

    @GetMapping("/meals")
    public ResponseEntity<List<Meal>> getAllMeals() {

        List<Meal> meal = new ArrayList<>();

        try {

            mealRepository.findAll().forEach(meal::add);

            if (meal.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(meal, HttpStatus.OK);

        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/meals/{mealID}")
    public ResponseEntity<Meal> getMealById(@PathVariable("mealID") long mealID) {

        Optional<Meal> mealData = mealRepository.findById(mealID);

        if (mealData.isPresent()) {
            return new ResponseEntity<>(mealData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("meals/mealByDiet")
    public ResponseEntity<Meal> findMealByMetaData(@RequestBody Meal meal) {

        Optional <Diet> _diet = dietRepository.findById(meal.getDiet().getDietID());
        Meal mealData = mealRepository.findByDayOfTheWeekAndMealNumberAndDiet(meal.getDayOfTheWeek(), meal.getMealNumber(), _diet.get());
        if (mealData != null) {
            return new ResponseEntity<>(mealData, HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("/meals/diets/{dietID}")
    public ResponseEntity<List<Meal>> getMealsByDietId(@PathVariable("dietID") long dietID) {

        List<Meal> meals = new ArrayList<>();

        try {

            mealRepository.findAllByDiet_DietID(dietID).forEach(meals::add);

            if (meals.isEmpty()) {
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(meals, HttpStatus.OK);

        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @GetMapping("/meals/diets/{dietID/mealID}")
    public ResponseEntity<Meal> getMealByDietId(@PathVariable("dietID") long dietID, @PathVariable("mealID") long mealID) {

        Optional<Meal> mealData = mealRepository.findByMealIDAndDiet_DietID(dietID, mealID);

        if (mealData.isPresent()) {
            return new ResponseEntity<>(mealData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @PostMapping(value = "/meals")
    public ResponseEntity<Meal> postMeal(@RequestBody Meal meal, @PathVariable("dietID") long dietID) {

        try {
            Meal _meal = new Meal(meal.getMealNumber(), meal.getDayOfTheWeek());

            Optional<Diet> dietData = dietRepository.findById(dietID);

            if (dietData.isPresent()) {

                _meal.setDiet(dietData.get());

                mealRepository.save(_meal);
                return new ResponseEntity<>(_meal, HttpStatus.CREATED);

            } else {

                return new ResponseEntity<>(HttpStatus.NOT_FOUND);

            }
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/meals/{mealID}")
    public ResponseEntity<HttpStatus> deleteProduct(@PathVariable("mealID") long mealID) {

        try {
            mealRepository.deleteById(mealID);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/meals")
    public ResponseEntity<HttpStatus> deleteAllProduct() {

        try {
            mealRepository.deleteAll();
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/meals/diets/{dietID}")
    public ResponseEntity<HttpStatus> deleteAllProduct(@PathVariable("dietID") long dietID) {

        try {
            mealRepository.deleteAllByDiet_DietID(dietID);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

    @PutMapping("/meals/{mealID}")
    public ResponseEntity<Meal> updateProduct(@PathVariable("mealID") long mealID, @RequestBody Meal meal) {

        Optional<Meal> mealData = mealRepository.findById(mealID);

        if (mealData.isPresent()) {

            Meal _meal = mealData.get();

            _meal.setMealNumber(meal.getMealNumber());
            _meal.setDayOfTheWeek(meal.getDayOfTheWeek());
            _meal.setDiet(meal.getDiet());

            return new ResponseEntity<>(mealRepository.save(_meal), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
}
