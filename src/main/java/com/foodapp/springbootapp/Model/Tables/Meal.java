package com.foodapp.springbootapp.Model.Tables;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Meal")
public class Meal implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "mealID", nullable = false, unique = true)
    private long mealID;

    @Column(name ="meal_Number", nullable = false)
    private int mealNumber;

    @Column(name ="day_Of_The_Week", nullable = false)
    private String dayOfTheWeek;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(name = "dietID", nullable = true)
    private Diet diet;

    public Meal() { }

    public Meal(int mealNumber, String dayOfTheWeek) {
        this.mealNumber = mealNumber;
        this.dayOfTheWeek = dayOfTheWeek;
    }

    public Meal(int mealNumber, String dayOfTheWeek, Diet diet) {
        this.mealNumber = mealNumber;
        this.dayOfTheWeek = dayOfTheWeek;
        this.diet = diet;
    }

    public long getMealID() {
        return mealID;
    }

    public void setMealID(long mealID) {
        this.mealID = mealID;
    }

    public int getMealNumber() {
        return mealNumber;
    }

    public void setMealNumber(int mealNumber) {
        this.mealNumber = mealNumber;
    }

    public String getDayOfTheWeek() {
        return dayOfTheWeek;
    }

    public void setDayOfTheWeek(String dayOfTheWeek) {
        this.dayOfTheWeek = dayOfTheWeek;
    }

    public Diet getDiet() {
        return diet;
    }

    public void setDiet(Diet diet) {
        this.diet = diet;
    }
}
