package com.food4life.demo.Model.JoinTables;

import com.food4life.demo.Model.CompositeKeys.Użytkownik_PrzepisKey;
import com.food4life.demo.Model.Tables.Przepis;
import com.food4life.demo.Model.Tables.Użytkownik;

import javax.persistence.*;

import java.io.Serializable;

import java.sql.Date;

@Entity
@Table (name = "Komentarz")
public class Komentarz implements Serializable {

    @EmbeddedId
    private Użytkownik_PrzepisKey id;

    @Column (name = "Treść_komentarza")
    private String treść_komentarza;

    @Column (name = "Data_dodania")
    private Date data_dodania;

    @ManyToOne
    @MapsId("użytkownikID")
    @JoinColumn(name = "Id_użytkownika")
    private Użytkownik użytkownik;

    @ManyToOne
    @MapsId("przepisID")
    @JoinColumn(name = "Id_przepisu")
    private Przepis przepis;

    public Komentarz() { }

    public Komentarz(Użytkownik_PrzepisKey id, String treść_komentarza, Date data_dodania) {
        this.id = id;
        this.treść_komentarza = treść_komentarza;
        this.data_dodania = data_dodania;
    }

    public Użytkownik_PrzepisKey getId() {
        return id;
    }

    public void setId(Użytkownik_PrzepisKey id) {
        this.id = id;
    }

    public String getTreść_komentarza() {
        return treść_komentarza;
    }

    public void setTreść_komentarza(String treść_komentarza) {
        this.treść_komentarza = treść_komentarza;
    }

    public Date getData_dodania() {
        return data_dodania;
    }

    public void setData_dodania(Date data_dodania) {
        this.data_dodania = data_dodania;
    }

    public Komentarz(Użytkownik_PrzepisKey id, Użytkownik użytkownik, Przepis przepis, String treść_komentarza, Date data_dodania) {
        this.id = id;
        this.użytkownik = użytkownik;
        this.przepis = przepis;
        this.treść_komentarza = treść_komentarza;
        this.data_dodania = data_dodania;
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
        return "Komentarz{" +
                "id=" + id +
                ", treść_komentarza='" + treść_komentarza + '\'' +
                ", data_dodania=" + data_dodania +
                ", użytkownik=" + użytkownik +
                ", przepis=" + przepis +
                '}';
    }
}
