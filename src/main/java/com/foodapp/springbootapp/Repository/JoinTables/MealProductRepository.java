package com.foodapp.springbootapp.Repository.JoinTables;

import com.foodapp.springbootapp.Model.JoinTables.MealProduct;
import com.foodapp.springbootapp.Model.Tables.Meal;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface MealProductRepository extends CrudRepository<MealProduct,Long> {

    Optional<MealProduct> findByMeal_MealIDAndProduct_ProductID(long mealID, long productID);
    List<MealProduct> findAllByMeal_MealID(long mealID);
    List<MealProduct> findByMeal(Meal meal);
    Optional<MealProduct> deleteByMeal_MealIDAndProduct_ProductID(long mealID, long productID);
    List<MealProduct> deleteAllByMeal_MealID(long mealID);
}
