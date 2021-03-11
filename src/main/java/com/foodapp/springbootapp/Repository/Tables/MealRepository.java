package com.foodapp.springbootapp.Repository.Tables;

import com.foodapp.springbootapp.Model.Tables.Diet;
import com.foodapp.springbootapp.Model.Tables.Meal;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface MealRepository extends CrudRepository<Meal,Long> {

    List<Meal> findAllByDiet_DietID(long dietID);
    void deleteAllByDiet_DietID(long dietID);
    Optional<Meal>findByMealIDAndDiet_DietID(long dietID,long mealID);
    Meal findByDayOfTheWeekAndMealNumberAndDiet(String dayOfTheWeek, int mealNumber, Diet diet);
}
