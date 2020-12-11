package com.food4life.demo.Model.CompositeKeys;

import org.springframework.data.annotation.Id;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import java.io.Serializable;

import java.util.Objects;

@Embeddable
public class Przepis_ProduktKey implements Serializable {

    @Id
    @Column(name ="ID_przepisu")
    int przepisID;

    @Id
    @Column (name ="ID_produkt")
    int produktID;

    public Przepis_ProduktKey() {
    }

    public Przepis_ProduktKey(int przepisID, int produktID) {
        this.przepisID = przepisID;
        this.produktID = produktID;
    }

    public int getPrzepisID() {
        return przepisID;
    }

    public void setPrzepisID(int przepisID) {
        this.przepisID = przepisID;
    }

    public int getProduktID() {
        return produktID;
    }

    public void setProduktID(int produktID) {
        this.produktID = produktID;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Przepis_ProduktKey that = (Przepis_ProduktKey) o;
        return przepisID == that.przepisID &&
                produktID == that.produktID;
    }

    @Override
    public int hashCode() {
        return Objects.hash(przepisID, produktID);
    }
}
