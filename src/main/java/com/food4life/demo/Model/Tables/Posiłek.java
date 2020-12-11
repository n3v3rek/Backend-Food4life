package com.food4life.demo.Model.Tables;

import com.food4life.demo.Model.JoinTables.Plan_żywienia;
import org.springframework.lang.Nullable;

import javax.persistence.*;

import java.io.Serializable;

import java.sql.Date;
import java.util.Set;


@Entity
@Table (name = "Posiłek")
public class Posiłek implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column (name = "Id_Posiłku")
    private int ID_posiłku;

    @Nullable
    @Column(name ="ID_przepisu")
    private int ID_przepisu;

    @Nullable
    @Column(name ="ID_produkt")
    private double ID_produkt;

    @Column(name ="Godzina")
    private double Godzina;

    @Column(name ="Dzień_tygodnia")
    private String Dzień_tygodnia;

    @Column(name ="Opis")
    private String opis;

    @Column(name ="Data_utworzenia")
    private Date Data_utworzenia;

    @OneToMany(mappedBy = "Posiłek")
    private Set<Plan_żywienia> planŻywienia;

    @OneToMany(mappedBy = "Posiłek")
    private Set <Produkt> produkt;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "ID_posiłku", referencedColumnName = "ID_przepisu")
    private Przepis przepis;

    public Posiłek() { }

    public Posiłek(int ID_posiłku, int ID_przepisu, double ID_produkt, double godzina, String dzień_tygodnia, String opis, Date data_utworzenia) {
        this.ID_posiłku = ID_posiłku;
        this.ID_przepisu = ID_przepisu;
        this.ID_produkt = ID_produkt;
        this.Godzina = godzina;
        this.Dzień_tygodnia = dzień_tygodnia;
        this.opis = opis;
        this.Data_utworzenia = data_utworzenia;
    }

    public int getID_posiłku() {
        return ID_posiłku;
    }

    public void setID_posiłku(int ID_posiłku) {
        this.ID_posiłku = ID_posiłku;
    }

    public int getID_przepisu() {
        return ID_przepisu;
    }

    public void setID_przepisu(int ID_przepisu) {
        this.ID_przepisu = ID_przepisu;
    }

    public double getID_produkt() {
        return ID_produkt;
    }

    public void setID_produkt(double ID_produkt) {
        this.ID_produkt = ID_produkt;
    }

    public double getGodzina() {
        return Godzina;
    }

    public void setGodzina(double godzina) {
        this.Godzina = godzina;
    }

    public String getDzień_tygodnia() {
        return Dzień_tygodnia;
    }

    public void setDzień_tygodnia(String dzień_tygodnia) {
        this.Dzień_tygodnia = dzień_tygodnia;
    }

    public String getOpis() {
        return opis;
    }

    public void setOpis(String opis) {
        this.opis = opis;
    }

    public Date getData_utworzenia() {
        return Data_utworzenia;
    }

    public void setData_utworzenia(Date data_utworzenia) {
        this.Data_utworzenia = data_utworzenia;
    }

    public Posiłek(int ID_posiłku, int ID_przepisu, double ID_produkt, double godzina, String dzień_tygodnia, String opis, Date data_utworzenia, Set<Plan_żywienia> planŻywienia, Set<Produkt> produkt, Przepis przepis) {
        this.ID_posiłku = ID_posiłku;
        this.ID_przepisu = ID_przepisu;
        this.ID_produkt = ID_produkt;
        this.Godzina = godzina;
        this.Dzień_tygodnia = dzień_tygodnia;
        this.opis = opis;
        this.Data_utworzenia = data_utworzenia;
        this.planŻywienia = planŻywienia;
        this.produkt = produkt;
        this.przepis = przepis;
    }

    public Set<Plan_żywienia> getPlanŻywienia() {
        return planŻywienia;
    }

    public void setPlanŻywienia(Set<Plan_żywienia> planŻywienia) {
        this.planŻywienia = planŻywienia;
    }

    public Set<Produkt> getProdukt() {
        return produkt;
    }

    public void setProdukt(Set<Produkt> produkt) {
        this.produkt = produkt;
    }

    public Przepis getPrzepis() {
        return przepis;
    }

    public void setPrzepis(Przepis przepis) {
        this.przepis = przepis;
    }

    @Override
    public String toString() {
        return "Posiłek{" +
                "ID_posiłku=" + ID_posiłku +
                ", ID_przepisu=" + ID_przepisu +
                ", ID_produkt=" + ID_produkt +
                ", Godzina=" + Godzina +
                ", Dzień_tygodnia='" + Dzień_tygodnia + '\'' +
                ", opis='" + opis + '\'' +
                ", Data_utworzenia=" + Data_utworzenia +
                ", planŻywienia=" + planŻywienia +
                ", produkt=" + produkt +
                ", przepis=" + przepis +
                '}';
    }
}
