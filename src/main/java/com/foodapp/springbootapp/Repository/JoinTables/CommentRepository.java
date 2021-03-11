package com.foodapp.springbootapp.Repository.JoinTables;

import com.foodapp.springbootapp.Model.JoinTables.Comment;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface CommentRepository extends CrudRepository<Comment,Long> {

    Optional<Comment> findByUser_UserIDAndAndRecipe_RecipeID(long userID, long recipeID);
    Optional<Comment> deleteByUser_UserIDAndRecipe_RecipeID(long userID, long recipeID);
    List<Comment> findAllByRecipe_RecipeID(long recipeID);
}
