package com.foodapp.springbootapp.Service;


import com.foodapp.springbootapp.Model.Tables.Meal;
import com.foodapp.springbootapp.Repository.Tables.MealRepository;
import org.mockito.Mock;

public class MealServiceTest {

    @Mock
    MealRepository mealRepository;

    public Meal save(Meal meal) {
        return mealRepository.save(meal);
    }


}
