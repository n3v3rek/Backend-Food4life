package com.foodapp.springbootapp.Model.JoinTables;

import com.foodapp.springbootapp.Model.Tables.Recipe;
import com.foodapp.springbootapp.Model.Tables.User;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

@Entity
@Table(name = "Comment")
public class Comment implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long UserRecipeKey;

    @Column(name = "content_Of_Comment", nullable = false)
    private String contentOfComment;

    @Column (name = "creation_Date", nullable = false)
    private Date creationDate;

    @Column (name = "status", nullable = false)
    private String status;

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

    public Comment() { }

    public Comment(String contentOfComment, Date creationDate, String status) {
        this.contentOfComment = contentOfComment;
        this.creationDate = creationDate;
        this.status = status;
    }

    public Comment(String contentOfComment, Date creationDate, String status, User user, Recipe recipe) {
        this.contentOfComment = contentOfComment;
        this.creationDate = creationDate;
        this.status = status;
        this.user = user;
        this.recipe = recipe;
    }

    public String getContentOfComment() {
        return contentOfComment;
    }

    public void setContentOfComment(String contentOfComment) {
        this.contentOfComment = contentOfComment;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public long getUserRecipeKey() {
        return UserRecipeKey;
    }

    public void setUserRecipeKey(long userRecipeKey) {
        UserRecipeKey = userRecipeKey;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Recipe getRecipe() {
        return recipe;
    }

    public void setRecipe(Recipe recipe) {
        this.recipe = recipe;
    }
}
