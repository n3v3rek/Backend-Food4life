package com.food4life.demo.Model.Tables;

import com.food4life.demo.Model.JoinTables.Plan_żywienia;

import javax.persistence.*;

import java.io.Serializable;

import java.sql.Date;

import java.util.Set;

@Entity
@Table (name = "ProfilDiety")
public class ProfilDiety implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column (name = "ID_profilu")
    private int ID_profilu;

    @Column (name = "ID_użytkownika")
    private int ID_użytkownika;

    @Column (name = "Data_utworzenia")
    private Date Data_utworzenia;

    @Column(name = "Zalecane_kcal")
    private int Zalecane_kcal;

    @Column(name = "Zalecane_białko")
    private int Zalecane_białko;

    @Column(name = "Zalecane_węglowodany")
    private int Zalecane_węglowodany;

    @Column(name = "Zalecane_tłuszcze")
    private int Zalecane_tłuszcze;

    @OneToMany(mappedBy = "profilDiety")
    private Set<Plan_żywienia> planŻywienia;

    @ManyToOne
    @JoinColumn(name = "ID_użytkownika",nullable = true)
    private Użytkownik użytkownik;

    public ProfilDiety() { }

    public ProfilDiety(int ID_profilu, int ID_użytkownika, Date data_utworzenia, int zalecane_kcal, int zalecane_białko, int zalecane_węglowodany, int zalecane_tłuszcze, Set<Plan_żywienia> planŻywienia) {
        this.ID_profilu = ID_profilu;
        this.ID_użytkownika = ID_użytkownika;
        this.Data_utworzenia = data_utworzenia;
        this.Zalecane_kcal = zalecane_kcal;
        this.Zalecane_białko = zalecane_białko;
        this.Zalecane_węglowodany = zalecane_węglowodany;
        this.Zalecane_tłuszcze = zalecane_tłuszcze;
        this.planŻywienia = planŻywienia;
    }

    public int getID_profilu() {
        return ID_profilu;
    }

    public void setID_profilu(int ID_profilu) {
        this.ID_profilu = ID_profilu;
    }

    public int getID_użytkownika() {
        return ID_użytkownika;
    }

    public void setID_użytkownika(int ID_użytkownika) {
        this.ID_użytkownika = ID_użytkownika;
    }

    public Date getData_utworzenia() {
        return Data_utworzenia;
    }

    public void setData_utworzenia(Date data_utworzenia) {
        this.Data_utworzenia = data_utworzenia;
    }

    public int getZalecane_kcal() {
        return Zalecane_kcal;
    }

    public void setZalecane_kcal(int zalecane_kcal) {
        this.Zalecane_kcal = zalecane_kcal;
    }

    public int getZalecane_białko() {
        return Zalecane_białko;
    }

    public void setZalecane_białko(int zalecane_białko) {
        this.Zalecane_białko = zalecane_białko;
    }

    public int getZalecane_węglowodany() {
        return Zalecane_węglowodany;
    }

    public void setZalecane_węglowodany(int zalecane_węglowodany) {
        this.Zalecane_węglowodany = zalecane_węglowodany;
    }

    public int getZalecane_tłuszcze() {
        return Zalecane_tłuszcze;
    }

    public void setZalecane_tłuszcze(int zalecane_tłuszcze) {
        this.Zalecane_tłuszcze = zalecane_tłuszcze;
    }

    public Set<Plan_żywienia> getPlanŻywienia() {
        return planŻywienia;
    }

    public void setPlanŻywienia(Set<Plan_żywienia> planŻywienia) {
        this.planŻywienia = planŻywienia;
    }

    public ProfilDiety(int ID_profilu, int ID_użytkownika, Date data_utworzenia, int zalecane_kcal, int zalecane_białko, int zalecane_węglowodany, int zalecane_tłuszcze, Set<Plan_żywienia> planŻywienia, Użytkownik użytkownik) {
        this.ID_profilu = ID_profilu;
        this.ID_użytkownika = ID_użytkownika;
        this.Data_utworzenia = data_utworzenia;
        this.Zalecane_kcal = zalecane_kcal;
        this.Zalecane_białko = zalecane_białko;
        this.Zalecane_węglowodany = zalecane_węglowodany;
        this.Zalecane_tłuszcze = zalecane_tłuszcze;
        this.planŻywienia = planŻywienia;
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
        return "ProfilDiety{" +
                "ID_profilu=" + ID_profilu +
                ", ID_użytkownika=" + ID_użytkownika +
                ", Data_utworzenia=" + Data_utworzenia +
                ", Zalecane_kcal=" + Zalecane_kcal +
                ", Zalecane_białko=" + Zalecane_białko +
                ", Zalecane_węglowodany=" + Zalecane_węglowodany +
                ", Zalecane_tłuszcze=" + Zalecane_tłuszcze +
                ", planŻywienia=" + planŻywienia +
                ", użytkownik=" + użytkownik +
                '}';
    }
}
