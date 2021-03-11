package com.foodapp.springbootapp.Model.Tables;

import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

@ToString
@Entity
@Table(name = "Diet")
public class Diet implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "dietID", nullable = false, unique = true)
    private long dietID;

    @Column(name = "recommended_Kilocalories", nullable = false)
    private int recommendedKilocalories;

    @Column(name = "recommended_Proteins", nullable = false)
    private int recommendedProteins;

    @Column(name = "recommended_Carbohydrates", nullable = false)
    private int recommendedCarbohydrates;

    @Column(name = "recommended_Fats", nullable = false)
    private int recommendedFats;

    @Column (name = "creation_Date", nullable = false)
    private Date creationDate;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(
            name = "userID",
            nullable = true
    )
    private User user;

    public Diet() { }

    public Diet(int recommendedKilocalories, int recommendedProteins, int recommendedCarbohydrates, int recommendedFats, Date creationDate) {
        this.recommendedKilocalories = recommendedKilocalories;
        this.recommendedProteins = recommendedProteins;
        this.recommendedCarbohydrates = recommendedCarbohydrates;
        this.recommendedFats = recommendedFats;
        this.creationDate = creationDate;
    }

    public Diet(int recommendedKilocalories, int recommendedProteins, int recommendedCarbohydrates, int recommendedFats, Date creationDate, User user) {
        this.recommendedKilocalories = recommendedKilocalories;
        this.recommendedProteins = recommendedProteins;
        this.recommendedCarbohydrates = recommendedCarbohydrates;
        this.recommendedFats = recommendedFats;
        this.creationDate = creationDate;
        this.user = user;
    }

    public long getDietID() {
        return dietID;
    }

    public void setDietID(long dietID) {
        this.dietID = dietID;
    }

    public int getRecommendedKilocalories() {
        return recommendedKilocalories;
    }

    public void setRecommendedKilocalories(int recommendedKilocalories) {
        this.recommendedKilocalories = recommendedKilocalories;
    }

    public int getRecommendedProteins() {
        return recommendedProteins;
    }

    public void setRecommendedProteins(int recommendedProteins) {
        this.recommendedProteins = recommendedProteins;
    }

    public int getRecommendedCarbohydrates() {
        return recommendedCarbohydrates;
    }

    public void setRecommendedCarbohydrates(int recommendedCarbohydrates) {
        this.recommendedCarbohydrates = recommendedCarbohydrates;
    }

    public int getRecommendedFats() {
        return recommendedFats;
    }

    public void setRecommendedFats(int recommendedFats) {
        this.recommendedFats = recommendedFats;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Diet{" +
                "dietID=" + dietID +
                ", recommendedKilocalories=" + recommendedKilocalories +
                ", recommendedProteins=" + recommendedProteins +
                ", recommendedCarbohydrates=" + recommendedCarbohydrates +
                ", recommendedFats=" + recommendedFats +
                ", creationDate=" + creationDate +
                ", user=" + user +
                '}';
    }

}

