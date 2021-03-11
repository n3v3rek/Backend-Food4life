package com.foodapp.springbootapp.Controller;

import com.foodapp.springbootapp.Controllers.Table.MealController;
import com.foodapp.springbootapp.Model.Tables.Diet;
import com.foodapp.springbootapp.Model.Tables.Meal;
import com.foodapp.springbootapp.Repository.Tables.DietRepository;
import com.foodapp.springbootapp.Repository.Tables.MealRepository;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Optional;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.AdditionalAnswers.returnsFirstArg;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
public class DietControllerTest {

    @Mock
    DietRepository dietRepository;

    @Mock
    MealRepository mealRepository;

    @Mock
    MealController mealController;

    @Test
    void testIfDietWillTrigerMeals() {
        Diet diet = new Diet();
        when(dietRepository.save(any(Diet.class))).then(returnsFirstArg());
        Diet _diet = dietRepository.save(diet);
        assertThat(mealRepository.findAllByDiet_DietID(_diet.getDietID())).isEqualTo(Optional.empty());
    }

}
