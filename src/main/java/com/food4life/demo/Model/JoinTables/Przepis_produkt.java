package com.food4life.demo.Model.JoinTables;

import com.food4life.demo.Model.CompositeKeys.Przepis_ProduktKey;
import com.food4life.demo.Model.Tables.Produkt;
import com.food4life.demo.Model.Tables.Przepis;

import javax.persistence.*;

import java.io.Serializable;

@Entity
@Table (name = "Przepis_produkt")
public class Przepis_produkt implements Serializable {

    @EmbeddedId
    private Przepis_ProduktKey ID;

    @Column (name = "Waga")
    private double Waga;

    @ManyToOne
    @MapsId("przepisID")
    @JoinColumn(name = "Id_przepisu")
    private Przepis przepis;

    @ManyToOne
    @MapsId("produktID")
    @JoinColumn(name = "Id_produkt")
    private Produkt produkt;

    public Przepis_produkt() { }

    public Przepis_produkt(Przepis_ProduktKey ID, double waga) {
        this.ID = ID;
        this.Waga = waga;
    }

    public Przepis_ProduktKey getID() {
        return ID;
    }

    public void setID(Przepis_ProduktKey ID) {
        this.ID = ID;
    }

    public double getWaga() {
        return Waga;
    }

    public void setWaga(double waga) {
        this.Waga = waga;
    }

    public Przepis_produkt(Przepis_ProduktKey ID, double waga, Przepis przepis, Produkt produkt) {
        this.ID = ID;
        this.Waga = waga;
        this.przepis = przepis;
        this.produkt = produkt;
    }

    public Przepis getPrzepis() {
        return przepis;
    }

    public void setPrzepis(Przepis przepis) {
        this.przepis = przepis;
    }

    public Produkt getProdukt() {
        return produkt;
    }

    public void setProdukt(Produkt produkt) {
        this.produkt = produkt;
    }

    @Override
    public String toString() {
        return "Przepis_produkt{" +
                "ID=" + ID +
                ", Waga=" + Waga +
                ", przepis=" + przepis +
                ", produkt=" + produkt +
                '}';
    }
}
