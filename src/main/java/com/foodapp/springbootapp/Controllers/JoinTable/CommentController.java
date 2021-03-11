package com.foodapp.springbootapp.Controllers.JoinTable;

import com.foodapp.springbootapp.Model.JoinTables.Comment;
import com.foodapp.springbootapp.Model.Tables.Diet;
import com.foodapp.springbootapp.Model.Tables.Meal;
import com.foodapp.springbootapp.Model.Tables.Recipe;
import com.foodapp.springbootapp.Model.Tables.User;
import com.foodapp.springbootapp.Repository.JoinTables.CommentRepository;
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
@RequestMapping("/api")
public class CommentController {

    @Autowired
    CommentRepository commentRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    RecipeRepository recipeRepository;

    @GetMapping("/comments/{userID}/{recipeID}")
    public ResponseEntity<Comment> getCommentByUserIDANDRecipeID(@PathVariable("userID") long userID, @PathVariable("recipeID") long recipeID){

        Optional<Comment> commentData = commentRepository.findByUser_UserIDAndAndRecipe_RecipeID(userID,recipeID);

        if (commentData.isPresent()){
            return new ResponseEntity<>(commentData.get(), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }

    @GetMapping("comments/recipes/{recipeID}")
    public ResponseEntity<List<Comment>> getCommentsByRecipeId(@PathVariable("recipeID") long recipeID){

        List<Comment> comments = new ArrayList<>();

        try{

            commentRepository.findAllByRecipe_RecipeID(recipeID).forEach(comments::add);;

            if (comments.isEmpty()){
                return new ResponseEntity<>(HttpStatus.NO_CONTENT);
            }

            return new ResponseEntity<>(comments,HttpStatus.OK);

        } catch (Exception e)
        {
            return new ResponseEntity<>(null,HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }


    @PostMapping(value = "/comments")
    public ResponseEntity<Comment> postComment(@RequestBody Comment comment){

        try{
            Comment _comment = new Comment(comment.getContentOfComment(),comment.getCreationDate(),comment.getStatus(), comment.getUser(), comment.getRecipe());
                commentRepository.save(_comment);
                return new ResponseEntity<>(_comment,HttpStatus.CREATED);
        } catch (Exception e){
            return new ResponseEntity<>(null,HttpStatus.EXPECTATION_FAILED);
        }
    }

    @DeleteMapping("/comments/{userID}/{recipeID}")
    public ResponseEntity<HttpStatus> deleteCommentByUserIDANDRecipeID(@PathVariable("userID") long userID, @PathVariable("recipeID") long recipeID) {

        try {
            commentRepository.deleteByUser_UserIDAndRecipe_RecipeID(userID, recipeID);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.EXPECTATION_FAILED);
        }
    }

        @PutMapping("/comments/{userID}/{recipeID}")
        public ResponseEntity<Comment> updateProduct(@PathVariable("userID") long userID,@PathVariable("recipeID") long recipeID, @RequestBody Comment comment){

            Optional<Comment> commentData = commentRepository.findByUser_UserIDAndAndRecipe_RecipeID(userID, recipeID);

            if (commentData.isPresent()){

                Comment _comment = commentData.get();

                _comment.setRecipe(comment.getRecipe());
                _comment.setUser(comment.getUser());
                _comment.setContentOfComment(comment.getContentOfComment());
                _comment.setCreationDate(comment.getCreationDate());
                _comment.setStatus(comment.getStatus());

                return new ResponseEntity<>(commentRepository.save(_comment),HttpStatus.OK);
            } else {
                return new ResponseEntity<>(HttpStatus.NOT_FOUND);
            }
        }



}
