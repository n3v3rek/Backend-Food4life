package com.foodapp.springbootapp.Model.Tables;


import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;

@ToString
@Entity
@Table(name = "Ban")
public class Ban implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "banID", nullable = false, unique = true)
    private long banID;

    @Column (name = "description", nullable = false)
    private String description;

    @Column (name = "unban_Date", nullable = true)
    private Date unbanDate;

    @ManyToOne(
            fetch = FetchType.LAZY,
            optional = false
    )
    @JoinColumn(
            name = "userID",
            nullable = true
    )
    private User user;

    public Ban(){};

    public Ban(String description, Date unban_date) {
        this.description = description;
        this.unbanDate = unban_date;
    }

    public Ban(String description, Date unbanDate, User user) {
        this.description = description;
        this.unbanDate = unbanDate;
        this.user = user;
    }

    public long getBanID() {
        return banID;
    }

    public void setBanID(long banID) {
        this.banID = banID;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getUnbanDate() {
        return unbanDate;
    }

    public void setUnbanDate(Date unbanDate) {
        this.unbanDate = unbanDate;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
