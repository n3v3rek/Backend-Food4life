package com.foodapp.springbootapp.Model.EmbeddableKeys;

import org.springframework.data.annotation.Id;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class UserRecipeKey implements Serializable {

    @Id
    @Column(name ="recipeID")
    long recipeID;

    @Id
    @Column (name ="userID")
    long userID;

    public UserRecipeKey() { }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserRecipeKey that = (UserRecipeKey) o;
        return recipeID == that.recipeID &&
                userID == that.userID;
    }

    @Override
    public int hashCode() {
        return Objects.hash(recipeID, userID);
    }
}
