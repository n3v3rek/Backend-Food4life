package com.food4life.demo.Model.Tables;

import javax.persistence.*;

import java.io.Serializable;

import java.sql.Date;

@Entity
@Table(name = "Pomiar")
public class Pomiar  implements Serializable {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column (name = "ID_pomiaru")
    private int ID_pomiaru;

    @Column (name = "ID_użytkownika")
    private int ID_użytkownika;

    @Column (name = "Waga")
    private double Waga;

    @Column (name = "Obwód_tali")
    private int Obwód_tali;

    @Column (name = "Obwód_uda")
    private int Obwód_uda;

    @Column (name = "Obwód_ramienia")
    private int Obwód_ramienia;

    @Column (name = "Opis")
    private String Opis;

    @Column (name = "Data_wykonania")
    private Date Data_wykonania;

    @ManyToOne
    @JoinColumn(name = "ID_użytkownika",nullable = true)
    private Użytkownik użytkownik;

    public Pomiar() { }

    public Pomiar(int ID_pomiaru, int ID_użytkownika, double waga, int obwód_tali, int obwód_uda, int obwód_ramienia, String opis, Date data_wykonania) {
        this.ID_pomiaru = ID_pomiaru;
        this.ID_użytkownika = ID_użytkownika;
        this.Waga = waga;
        this.Obwód_tali = obwód_tali;
        this.Obwód_uda = obwód_uda;
        this.Obwód_ramienia = obwód_ramienia;
        this.Opis = opis;
        this.Data_wykonania = data_wykonania;
    }

    public int getID_pomiaru() {
        return ID_pomiaru;
    }

    public void setID_pomiaru(int ID_pomiaru) {
        this.ID_pomiaru = ID_pomiaru;
    }

    public int getID_użytkownika() {
        return ID_użytkownika;
    }

    public void setID_użytkownika(int ID_użytkownika) {
        this.ID_użytkownika = ID_użytkownika;
    }

    public double getWaga() {
        return Waga;
    }

    public void setWaga(double waga) {
        this.Waga = waga;
    }

    public int getObwód_tali() {
        return Obwód_tali;
    }

    public void setObwód_tali(int obwód_tali) {
        this.Obwód_tali = obwód_tali;
    }

    public int getObwód_uda() {
        return Obwód_uda;
    }

    public void setObwód_uda(int obwód_uda) {
        this.Obwód_uda = obwód_uda;
    }

    public int getObwód_ramienia() {
        return Obwód_ramienia;
    }

    public void setObwód_ramienia(int obwód_ramienia) {
        this.Obwód_ramienia = obwód_ramienia;
    }

    public String getOpis() {
        return Opis;
    }

    public void setOpis(String opis) {
        this.Opis = opis;
    }

    public Date getData_wykonania() {
        return Data_wykonania;
    }

    public void setData_wykonania(Date data_wykonania) {
        this.Data_wykonania = data_wykonania;
    }

    public Pomiar(int ID_pomiaru, int ID_użytkownika, double waga, int obwód_tali, int obwód_uda, int obwód_ramienia, String opis, Date data_wykonania, Użytkownik użytkownik) {
        this.ID_pomiaru = ID_pomiaru;
        this.ID_użytkownika = ID_użytkownika;
        this.Waga = waga;
        this.Obwód_tali = obwód_tali;
        this.Obwód_uda = obwód_uda;
        this.Obwód_ramienia = obwód_ramienia;
        this.Opis = opis;
        this.Data_wykonania = data_wykonania;
        this.użytkownik = użytkownik;
    }

    public Użytkownik getUżytkownik() {
        return użytkownik;
    }

    public void setUżytkownik(Użytkownik użytkownik) {
        this.użytkownik = użytkownik;
    }

    @Override
    public String toString() {
        return "Pomiar{" +
                "ID_pomiaru=" + ID_pomiaru +
                ", ID_użytkownika=" + ID_użytkownika +
                ", Waga=" + Waga +
                ", Obwód_tali=" + Obwód_tali +
                ", Obwód_uda=" + Obwód_uda +
                ", Obwód_ramienia=" + Obwód_ramienia +
                ", Opis='" + Opis + '\'' +
                ", Data_wykonania=" + Data_wykonania +
                ", użytkownik=" + użytkownik +
                '}';
    }
}
