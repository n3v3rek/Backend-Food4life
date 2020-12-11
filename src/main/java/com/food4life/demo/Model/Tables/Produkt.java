package com.food4life.demo.Model.Tables;

import com.food4life.demo.Model.JoinTables.Przepis_produkt;

import javax.persistence.*;

import java.io.Serializable;

import java.sql.Date;

import java.util.Set;

@Entity
@Table(name = "Produkt")
public class Produkt implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column (name = "Id_Produkt")
    private int ID_produkt;

    @Column(name ="Nazwa")
    private String Nazwa;

    @Column(name ="Cena")
    private double Cena;

    @Column(name ="Alergeny")
    private String Alergeny;

    @Column(name ="Opis")
    private String Opis;

    @Column(name ="Kcal")
    private int Kcal;

    @Column(name ="Białko")
    private int Białko;

    @Column(name ="Węglowodany")
    private int Węglowodany;

    @Column(name ="Tłuszcze")
    private int Tłuszcze;

    @Column(name ="Data_dodania")
    private Date Data_dodania;

    @Column(name ="Indeks_glikeminczy")
    private int Indeks_glikemiczny;

    @OneToMany(mappedBy = "Produkt")
    private Set<Przepis_produkt> PrzepisProdukt;

    @ManyToOne
    @JoinColumn(name = "ID_produkt",nullable = true)
    private Posiłek posiłek;

    public Produkt() { }

    public Produkt(int ID_produkt, String nazwa, double cena, String alergeny, String opis, int kcal, int białko, int węglowodany, int tłuszcze, Date data_dodania, int indeks_glikemiczny) {
        this.ID_produkt = ID_produkt;
        this.Nazwa = nazwa;
        this.Cena = cena;
        this.Alergeny = alergeny;
        this.Opis = opis;
        this.Kcal = kcal;
        this.Białko = białko;
        this.Węglowodany = węglowodany;
        this.Tłuszcze = tłuszcze;
        this.Data_dodania = data_dodania;
        this.Indeks_glikemiczny = indeks_glikemiczny;
    }

    public int getID_produkt() {
        return ID_produkt;
    }

    public void setID_produkt(int ID_produkt) {
        this.ID_produkt = ID_produkt;
    }

    public String getNazwa() {
        return Nazwa;
    }

    public void setNazwa(String nazwa) {
        this.Nazwa = nazwa;
    }

    public double getCena() {
        return Cena;
    }

    public void setCena(double cena) {
        this.Cena = cena;
    }

    public String getAlergeny() {
        return Alergeny;
    }

    public void setAlergeny(String alergeny) {
        this.Alergeny = alergeny;
    }

    public String getOpis() {
        return Opis;
    }

    public void setOpis(String opis) {
        this.Opis = opis;
    }

    public int getKcal() {
        return Kcal;
    }

    public void setKcal(int kcal) {
        this.Kcal = kcal;
    }

    public int getBiałko() {
        return Białko;
    }

    public void setBiałko(int białko) {
        this.Białko = białko;
    }

    public int getWęglowodany() {
        return Węglowodany;
    }

    public void setWęglowodany(int węglowodany) {
        this.Węglowodany = węglowodany;
    }

    public int getTłuszcze() {
        return Tłuszcze;
    }

    public void setTłuszcze(int tłuszcze) {
        this.Tłuszcze = tłuszcze;
    }

    public Date getData_dodania() {
        return Data_dodania;
    }

    public void setData_dodania(Date data_dodania) {
        this.Data_dodania = data_dodania;
    }

    public int getIndeks_glikemiczny() {
        return Indeks_glikemiczny;
    }

    public void setIndeks_glikemiczny(int indeks_glikemiczny) {
        this.Indeks_glikemiczny = indeks_glikemiczny;
    }

    public Produkt(int ID_produkt, String nazwa, double cena, String alergeny, String opis, int kcal, int białko, int węglowodany, int tłuszcze, Date data_dodania, int indeks_glikemiczny, Set<Przepis_produkt> przepisProdukt, Posiłek posiłek) {
        this.ID_produkt = ID_produkt;
        this.Nazwa = nazwa;
        this.Cena = cena;
        this.Alergeny = alergeny;
        this.Opis = opis;
        this.Kcal = kcal;
        this.Białko = białko;
        this.Węglowodany = węglowodany;
        this.Tłuszcze = tłuszcze;
        this.Data_dodania = data_dodania;
        this.Indeks_glikemiczny = indeks_glikemiczny;
        this. PrzepisProdukt = przepisProdukt;
        this.posiłek = posiłek;
    }

    public Set<Przepis_produkt> getPrzepisProdukt() {
        return PrzepisProdukt;
    }

    public void setPrzepisProdukt(Set<Przepis_produkt> przepisProdukt) {
        this.PrzepisProdukt = przepisProdukt;
    }

    public Posiłek getPosiłek() {
        return posiłek;
    }

    public void setPosiłek(Posiłek posiłek) {
        this.posiłek = posiłek;
    }

    @Override
    public String toString() {
        return "Produkt{" +
                "ID_produkt=" + ID_produkt +
                ", Nazwa='" + Nazwa + '\'' +
                ", Cena=" + Cena +
                ", Alergeny='" + Alergeny + '\'' +
                ", Opis='" + Opis + '\'' +
                ", Kcal=" + Kcal +
                ", Białko=" + Białko +
                ", Węglowodany=" + Węglowodany +
                ", Tłuszcze=" + Tłuszcze +
                ", Data_dodania=" + Data_dodania +
                ", Indeks_glikemiczny=" + Indeks_glikemiczny +
                ", PrzepisProdukt=" + PrzepisProdukt +
                ", posiłek=" + posiłek +
                '}';
    }
}
