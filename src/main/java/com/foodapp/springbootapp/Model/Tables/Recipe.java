package com.foodapp.springbootapp.Model.Tables;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

@Entity
@Table(name = "Recipe")
public class Recipe implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "recipeID", nullable = false, unique = true)
    private long recipeID;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "content_Of_Recipe", nullable = false)
    private String contentOfRecipe;

    @Column(name = "ingredients",nullable = false)
    private String ingredients;

    @Column (name = "creation_Date", nullable = false)
    private Date creationDate;

    @Column(name = "kilocalories", nullable = false)
    private int kilocalorie;

    @Column(name = "proteins", nullable = false)
    private int protein;

    @Column(name = "carbohydrates", nullable = false)
    private int carbohydrates;

    @Column(name = "fats", nullable = false)
    private int fats;

    @Column(name = "weight", nullable = false)
    private int weight;

    @Column (name = "description", nullable = false)
    private String description;

    @Column(name = "likes_Counter", nullable = false)
    private int likesCounter;

    @Column (name = "status", nullable = false)
    private String status;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(name = "userID", nullable = true)
    private User user;

    public Recipe() { }

    public Recipe(String name, String contentOfRecipe, String ingredients, Date creationDate, int kilocalorie, int protein, int carbohydrates, int fats, int weight, String description, int likesCounter, String status, User user) {
        this.name = name;
        this.contentOfRecipe = contentOfRecipe;
        this.ingredients = ingredients;
        this.creationDate = creationDate;
        this.kilocalorie = kilocalorie;
        this.protein = protein;
        this.carbohydrates = carbohydrates;
        this.fats = fats;
        this.weight = weight;
        this.description = description;
        this.likesCounter = likesCounter;
        this.status = status;
        this.user = user;
    }

    public Recipe(String name, String contentOfRecipe, String ingredients, Date creationDate, int kilocalorie, int protein, int carbohydrates, int fats, int weight, String description, int likesCounter, String status) {
        this.name = name;
        this.contentOfRecipe = contentOfRecipe;
        this.ingredients = ingredients;
        this.creationDate = creationDate;
        this.kilocalorie = kilocalorie;
        this.protein = protein;
        this.carbohydrates = carbohydrates;
        this.fats = fats;
        this.weight = weight;
        this.description = description;
        this.likesCounter = likesCounter;
        this.status = status;
    }

    public long getRecipeID() {
        return recipeID;
    }

    public void setRecipeID(long recipeID) {
        this.recipeID = recipeID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContentOfRecipe() {
        return contentOfRecipe;
    }

    public void setContentOfRecipe(String contentOfRecipe) {
        this.contentOfRecipe = contentOfRecipe;
    }

    public String getIngredients() {
        return ingredients;
    }

    public void setIngredients(String ingredients) {
        this.ingredients = ingredients;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public int getKilocalorie() {
        return kilocalorie;
    }

    public void setKilocalorie(int kilocalorie) {
        this.kilocalorie = kilocalorie;
    }

    public int getProtein() {
        return protein;
    }

    public void setProtein(int protein) {
        this.protein = protein;
    }

    public int getCarbohydrates() {
        return carbohydrates;
    }

    public void setCarbohydrates(int carbohydrates) {
        this.carbohydrates = carbohydrates;
    }

    public int getFats() {
        return fats;
    }

    public void setFats(int fats) {
        this.fats = fats;
    }


    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getLikesCounter() {
        return likesCounter;
    }

    public void setLikesCounter(int likesCounter) {
        this.likesCounter = likesCounter;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
