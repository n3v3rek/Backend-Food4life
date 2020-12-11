package com.food4life.demo.Model.JoinTables;

import com.food4life.demo.Model.CompositeKeys.ProfilDiety_PosiłekKey;
import com.food4life.demo.Model.Tables.Posiłek;
import com.food4life.demo.Model.Tables.ProfilDiety;
import com.food4life.demo.Model.Tables.Przepis;
import com.food4life.demo.Model.Tables.Użytkownik;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "Plan_żywienia")
public class Plan_żywienia implements Serializable {

    @EmbeddedId
    private ProfilDiety_PosiłekKey ID;

    @ManyToOne
    @MapsId("profilID")
    @JoinColumn(name = "Id_profilu")
    private ProfilDiety profildiety;

    @ManyToOne
    @MapsId("posiłekID")
    @JoinColumn(name = "Id_posiłku")
    private Posiłek posiłek;

    public Plan_żywienia() {


    }

    public Plan_żywienia(ProfilDiety_PosiłekKey ID) {
        this.ID = ID;
    }

    public ProfilDiety_PosiłekKey getID() {
        return ID;
    }

    public void setID(ProfilDiety_PosiłekKey ID) {
        this.ID = ID;
    }

    public ProfilDiety getProfildiety() {
        return profildiety;
    }

    public void setProfildiety(ProfilDiety profildiety) {
        this.profildiety = profildiety;
    }

    public Posiłek getPosiłek() {
        return posiłek;
    }

    public void setPosiłek(Posiłek posiłek) {
        this.posiłek = posiłek;
    }

    public Plan_żywienia(ProfilDiety_PosiłekKey ID, ProfilDiety profildiety, Posiłek posiłek) {
        this.ID = ID;
        this.profildiety = profildiety;
        this.posiłek = posiłek;
    }

    @Override
    public String toString() {
        return "Plan_żywienia{" +
                "ID=" + ID +
                ", profildiety=" + profildiety +
                ", posiłek=" + posiłek +
                '}';
    }
}
