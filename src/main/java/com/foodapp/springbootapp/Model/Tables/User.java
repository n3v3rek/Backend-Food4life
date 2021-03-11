package com.foodapp.springbootapp.Model.Tables;

import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

@ToString
@Entity
@Table(name = "User")
public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "userID", nullable = false, unique = true)
    private long userID;

    @Column (name = "username", nullable = false)
    private String username;

    @Column (name = "password", nullable = false)
    private String password;

    @Column (name = "email", nullable = false, unique = true)
    private String email;

    @Column (name = "account_Type", nullable = false)
    private String accountType;

    @Column (name = "creation_Date", nullable = false)
    private Date creationDate;

    @Column (name = "birthday_Date", nullable = true)
    private Date birthdayDate;

    public User() { }

    public User(String username, String password, String email) {
        this.username = username;
        this.password = password;
        this.email = email;
    }

    public User(String username, String password, String email, String accountType, Date creationDate) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.accountType = accountType;
        this.creationDate = creationDate;
    }

    public User(String username, String password, String email, String accountType, Date creationDate, Date birthdayDate) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.accountType = accountType;
        this.creationDate = creationDate;
        this.birthdayDate = birthdayDate;
    }

    public long getUserID() {
        return userID;
    }

    public void setUserID(long userID) {
        this.userID = userID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public Date getBirthdayDate() {
        return birthdayDate;
    }

    public void setBirthdayDate(Date birthdayDate) {
        this.birthdayDate = birthdayDate;
    }
}
