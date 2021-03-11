package com.foodapp.springbootapp.Model.JoinTables;

import com.foodapp.springbootapp.Model.Tables.Recipe;
import com.foodapp.springbootapp.Model.Tables.User;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;

@ToString
@Entity
@Table(name = "Favorite_Recipes")
public class FavoriteRecipes implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long UserRecipeKey;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(name = "userID")
    private User user;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(name = "recipeID")
    private Recipe recipe;

    public FavoriteRecipes() {
    }

    public FavoriteRecipes(User user, Recipe recipe) {
        this.user = user;
        this.recipe = recipe;
    }

    public FavoriteRecipes(Recipe recipe) {
        this.recipe = recipe;
    }

    public long getUserRecipeKey() {
        return UserRecipeKey;
    }

    public User getUser() {
        return user;
    }

    public Recipe getRecipe() {
        return recipe;
    }

    public void setUserRecipeKey(long userRecipeKey) {
        UserRecipeKey = userRecipeKey;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setRecipe(Recipe recipe) {
        this.recipe = recipe;
    }
}
