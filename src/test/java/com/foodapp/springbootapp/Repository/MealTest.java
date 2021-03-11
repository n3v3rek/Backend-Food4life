package com.foodapp.springbootapp.Repository;

import com.foodapp.springbootapp.Model.Tables.Diet;
import com.foodapp.springbootapp.Model.Tables.Meal;
import com.foodapp.springbootapp.Repository.Tables.MealRepository;
import com.foodapp.springbootapp.Service.MealServiceTest;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import static org.assertj.core.api.Assertions.assertThat;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.AdditionalAnswers.returnsFirstArg;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@ExtendWith(MockitoExtension.class)
public class MealTest {

    @Mock
    MealRepository mealRepository;

    @InjectMocks
    MealServiceTest mealServiceTest;

    @Test
    void testifMealObjectExist() {
        Meal meal = new Meal();
        when(mealRepository.save(any(Meal.class))).then(returnsFirstArg());
        Meal _meal = mealRepository.save(meal);
        Assertions.assertNotNull(_meal.getMealID());
    }

    @Test
    void testIfMealExistWithoutDiet(){
        Diet diet =  new Diet();
        Meal meal = new Meal(1, "Poniedziałek", diet);
        Meal _meal = mealRepository.save(meal);
        Assertions.assertThrows(NullPointerException.class, () -> {
            _meal.getMealID();
        });
    }

    @Test
    void testIfMealuseRepository(){
        Diet diet =  new Diet();
        Meal meal = new Meal(1, "Poniedziałek", diet);
        when(mealServiceTest.save(any(Meal.class))).then(returnsFirstArg());
        Meal _meal = mealServiceTest.save(meal);
        assertEquals(Meal.class, _meal.getClass());
        verify(mealRepository, times(1)).save(meal);
    }
}
