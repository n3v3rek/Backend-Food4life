package com.food4life.demo.Model.JoinTables;

import com.food4life.demo.Model.CompositeKeys.Użytkownik_PrzepisKey;
import com.food4life.demo.Model.Tables.Przepis;
import com.food4life.demo.Model.Tables.Użytkownik;

import javax.persistence.*;

import java.io.Serializable;

@Entity
@Table (name = "Ulubione_przepisy")
public class Ulubione_przepisy implements Serializable {

    @EmbeddedId
    private Użytkownik_PrzepisKey id;

    @Column (name = "ocena")
    private int ocena;

    @ManyToOne
    @MapsId("użytkownikID")
    @JoinColumn(name = "Id_użytkownika")
    private Użytkownik użytkownik;

    @ManyToOne
    @MapsId("przepisID")
    @JoinColumn(name = "Id_przepisu")
    private Przepis przepis;

    public Ulubione_przepisy() {
    }

    public Ulubione_przepisy(Użytkownik_PrzepisKey id, int ocena) {
        this.id = id;
        this.ocena = ocena;
    }

    public Użytkownik_PrzepisKey getId() {
        return id;
    }

    public void setId(Użytkownik_PrzepisKey id) {
        this.id = id;
    }

    public int getOcena() {
        return ocena;
    }

    public void setOcena(int ocena) {
        this.ocena = ocena;
    }

    public Ulubione_przepisy(Użytkownik_PrzepisKey id, Użytkownik użytkownik, Przepis przepis, int ocena) {
        this.id = id;
        this.użytkownik = użytkownik;
        this.przepis = przepis;
        this.ocena = ocena;
    }

    public Użytkownik getUżytkownik() {
        return użytkownik;
    }

    public void setUżytkownik(Użytkownik użytkownik) {
        this.użytkownik = użytkownik;
    }

    public Przepis getPrzepis() {
        return przepis;
    }

    public void setPrzepis(Przepis przepis) {
        this.przepis = przepis;
    }

    @Override
    public String toString() {
        return "Ulubione_przepisy{" +
                "id=" + id +
                ", ocena=" + ocena +
                ", użytkownik=" + użytkownik +
                ", przepis=" + przepis +
                '}';
    }
}


