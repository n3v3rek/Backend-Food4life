package com.foodapp.springbootapp.Repository.Tables;

import com.foodapp.springbootapp.Model.Tables.Recipe;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface RecipeRepository extends CrudRepository<Recipe,Long> {

    List<Recipe> findAllByOrderByLikesCounterDesc();
    List<Recipe> findAllByStatus(String status);
}
