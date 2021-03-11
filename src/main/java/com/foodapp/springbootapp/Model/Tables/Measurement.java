package com.foodapp.springbootapp.Model.Tables;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

@Getter
@Setter
@AllArgsConstructor
@Entity
@Table(name = "Measurement")
public class Measurement  implements Serializable {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column (name = "measurementID", nullable = false, unique = true)
    private long measurementID;

    @Column (name = "weight", nullable = false)
    private double weight;

    @Column (name = "hip_Size", nullable = false)
    private int hipSize;

    @Column (name = "waist_Size", nullable = false)
    private int waistSize;

    @Column (name = "biceps_Circumference", nullable = false)
    private int bicepsCircumference;

    @Column (name = "chest_Circumference", nullable = false)
    private int chestCircumference;

    @Column (name = "thigh_Circumference", nullable = false)
    private int thighCircumference;

    @Column (name = "calf_Circumference", nullable = false)
    private int calfCircumference;

    @Column (name = "creation_Date", nullable = false)
    private Date creationDate;

    @Column (name = "growth", nullable = false)
    private int growth;

    @Column (name = "description", nullable = false)
    private String description;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(
            name = "userID",
            nullable = true
    )
    private User user;

    public Measurement() { }

    public Measurement(double weight, int hipSize, int waistSize, int bicepsCircumference, int chestCircumference, int thighCircumference, int calfCircumference, Date creationDate, int growth, String description) {
        this.weight = weight;
        this.hipSize = hipSize;
        this.waistSize = waistSize;
        this.bicepsCircumference = bicepsCircumference;
        this.chestCircumference = chestCircumference;
        this.thighCircumference = thighCircumference;
        this.calfCircumference = calfCircumference;
        this.creationDate = creationDate;
        this.growth = growth;
        this.description = description;
    }

    public Measurement(double weight, int hipSize, int waistSize, int bicepsCircumference, int chestCircumference, int thighCircumference, int calfCircumference, Date creationDate, int growth, String description, User user) {
        this.weight = weight;
        this.hipSize = hipSize;
        this.waistSize = waistSize;
        this.bicepsCircumference = bicepsCircumference;
        this.chestCircumference = chestCircumference;
        this.thighCircumference = thighCircumference;
        this.calfCircumference = calfCircumference;
        this.creationDate = creationDate;
        this.growth = growth;
        this.description = description;
        this.user = user;
    }

    public long getMeasurementID() {
        return measurementID;
    }

    public void setMeasurementID(long measurementID) {
        this.measurementID = measurementID;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public int getHipSize() {
        return hipSize;
    }

    public void setHipSize(int hipSize) {
        this.hipSize = hipSize;
    }

    public int getWaistSize() {
        return waistSize;
    }

    public void setWaistSize(int waistSize) {
        this.waistSize = waistSize;
    }

    public int getBicepsCircumference() {
        return bicepsCircumference;
    }

    public void setBicepsCircumference(int bicepsCircumference) {
        this.bicepsCircumference = bicepsCircumference;
    }

    public int getChestCircumference() {
        return chestCircumference;
    }

    public void setChestCircumference(int chestCircumference) {
        this.chestCircumference = chestCircumference;
    }

    public int getThighCircumference() {
        return thighCircumference;
    }

    public void setThighCircumference(int thighCircumference) {
        this.thighCircumference = thighCircumference;
    }

    public int getCalfCircumference() {
        return calfCircumference;
    }

    public void setCalfCircumference(int calfCircumference) {
        this.calfCircumference = calfCircumference;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public int getGrowth() {
        return growth;
    }

    public void setGrowth(int growth) {
        this.growth = growth;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Measurement{" +
                "measurementID=" + measurementID +
                ", weight=" + weight +
                ", hipSize=" + hipSize +
                ", waistSize=" + waistSize +
                ", bicepsCircumference=" + bicepsCircumference +
                ", chestCircumference=" + chestCircumference +
                ", thighCircumference=" + thighCircumference +
                ", calfCircumference=" + calfCircumference +
                ", creationDate=" + creationDate +
                ", growth=" + growth +
                ", description='" + description + '\'' +
                ", user=" + user +
                '}';
    }
}
