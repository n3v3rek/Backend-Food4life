package com.food4life.demo.Model.CompositeKeys;

import org.springframework.data.annotation.Id;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import java.io.Serializable;

import java.util.Objects;

@Embeddable
public class Użytkownik_PrzepisKey implements Serializable {

    @Id
    @Column (name ="ID_przepisu")
     int przepisID;

    @Id
    @Column (name ="ID_użytkownika")
     int użytkownikID;

    public Użytkownik_PrzepisKey() { }

    public Użytkownik_PrzepisKey(int ID_przepisu, int ID_użytkownika) {
        this.przepisID = ID_przepisu;
        this.użytkownikID = ID_użytkownika;
    }

    public int getID_przepisu() {
        return przepisID;
    }

    public void setID_przepisu(int ID_przepisu) {
        this.przepisID = ID_przepisu;
    }

    public int getID_użytkownika() {
        return użytkownikID;
    }

    public void setID_użytkownika(int ID_użytkownika) {
        this.użytkownikID = ID_użytkownika;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Użytkownik_PrzepisKey that = (Użytkownik_PrzepisKey) o;
        return przepisID == that.przepisID &&
                użytkownikID == that.użytkownikID;
    }

    @Override
    public int hashCode() {
        return Objects.hash(przepisID, użytkownikID);
    }
}
