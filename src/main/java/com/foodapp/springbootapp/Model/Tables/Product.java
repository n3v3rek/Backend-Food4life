package com.foodapp.springbootapp.Model.Tables;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

@Entity
@Table(name = "Product")
public class Product implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "productID", nullable = false, unique = true)
    private long productID;

    @Column(name = "name", nullable = false)
    private String name;

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

    @Column (name = "creation_Date", nullable = true)
    private Date creationDate;

    @Column (name = "status", nullable = true)
    private String status;

    @Column(name = "allergens", nullable = true)
    private String allergens;

    @Column (name = "description", nullable = true)
    private String description;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(name = "userID", nullable = true)
    private User user;

    public Product() { }

    public Product(String name, int kilocalorie, int protein, int carbohydrates, int fats, int weight, Date creationDate, String status, String allergens, String description) {
        this.name = name;
        this.kilocalorie = kilocalorie;
        this.protein = protein;
        this.carbohydrates = carbohydrates;
        this.fats = fats;
        this.weight = weight;
        this.creationDate = creationDate;
        this.status = status;
        this.allergens = allergens;
        this.description = description;
    }

    public Product(String name, int kilocalorie, int protein, int carbohydrates, int fats, int weight, Date creationDate, String status, String allergens, String description, User user) {
        this.name = name;
        this.kilocalorie = kilocalorie;
        this.protein = protein;
        this.carbohydrates = carbohydrates;
        this.fats = fats;
        this.weight = weight;
        this.creationDate = creationDate;
        this.status = status;
        this.allergens = allergens;
        this.description = description;
        this.user = user;
    }

    public long getProductID() {
        return productID;
    }

    public void setProductID(long productID) {
        this.productID = productID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getWeight() {
        return weight;
    }

    public void setWeight(int weight) {
        this.weight = weight;
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

    public String getAllergens() {
        return allergens;
    }

    public void setAllergens(String allergens) {
        this.allergens = allergens;
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
}
