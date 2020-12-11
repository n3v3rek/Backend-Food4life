package com.food4life.demo.Model.Tables;


import com.food4life.demo.Model.JoinTables.Komentarz;
import com.food4life.demo.Model.JoinTables.Ulubione_przepisy;

import javax.persistence.*;

import java.io.Serializable;

import java.sql.Date;

import java.util.Set;

@Entity
@Table(name = "Użytkownik")
public class Użytkownik implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column (name = "ID_użytkownika")
    private int ID_użytkownik;

    @Column (name = "Nazwa_użytkownika")
    private String Nazwa_użytkownika;

    @Column (name = "Hasło")
    private String Hasło;

    @Column (name = "Adres_email")
    private String Adres_email;

    // TU MOZE BYC BLAD ENUM ----> STRING
    @Column (name = "Typ_konta")
    private String Typ_konta;

    @Column (name = "Data_utworzenia")
    private Date Data_utworzenia;

    @Column (name = "Wiek")
    private int Wiek;

    @Column (name = "Wzrost")
    private int Wzrost;

    @Column (name = "Zainteresowania")
    private String Zainteresowania;

    @OneToMany(mappedBy = "użytkownik")
    private Set<Ulubione_przepisy> ulubionePrzepisy;

    @OneToMany(mappedBy = "użytkownik")
    private Set<Komentarz> komentarze;

    @OneToMany(mappedBy = "użytkownik")
    private Set <Pomiar> pomiar;

    @OneToMany(mappedBy = "użytkownik")
    private Set <ProfilDiety> profilDiety;

    @OneToMany(mappedBy = "użytkownik")
    private Set <Przepis> przepis;

    public Użytkownik() { }

    public Użytkownik(int ID_użytkownik, String nazwa_użytkownika, String hasło, String adres_email, String typ_konta, Date data_utworzenia, int wiek, int wzrost, String zainteresowania) {
        this.ID_użytkownik = ID_użytkownik;
        this.Nazwa_użytkownika = nazwa_użytkownika;
        this.Hasło = hasło;
        this.Adres_email = adres_email;
        this.Typ_konta = typ_konta;
        this.Data_utworzenia = data_utworzenia;
        this.Wiek = wiek;
        this.Wzrost = wzrost;
        this.Zainteresowania = zainteresowania;
    }

    public int getID_użytkownik() {
        return ID_użytkownik;
    }

    public void setID_użytkownik(int ID_użytkownik) {
        this.ID_użytkownik = ID_użytkownik;
    }

    public String getNazwa_użytkownika() {
        return Nazwa_użytkownika;
    }

    public void setNazwa_użytkownika(String nazwa_użytkownika) {
        this.Nazwa_użytkownika = nazwa_użytkownika;
    }

    public String getHasło() {
        return Hasło;
    }

    public void setHasło(String hasło) {
        this.Hasło = hasło;
    }

    public String getAdres_email() {
        return Adres_email;
    }

    public void setAdres_email(String adres_email) {
        this.Adres_email = adres_email;
    }

    public String getTyp_konta() {
        return Typ_konta;
    }

    public void setTyp_konta(String typ_konta) {
        this.Typ_konta = typ_konta;
    }

    public Date getData_utworzenia() {
        return Data_utworzenia;
    }

    public void setData_utworzenia(Date data_utworzenia) {
        this.Data_utworzenia = data_utworzenia;
    }

    public int getWiek() {
        return Wiek;
    }

    public void setWiek(int wiek) {
        this.Wiek = wiek;
    }

    public int getWzrost() {
        return Wzrost;
    }

    public void setWzrost(int wzrost) {
        this.Wzrost = wzrost;
    }

    public String getZainteresowania() {
        return Zainteresowania;
    }

    public void setZainteresowania(String zainteresowania) {
        this.Zainteresowania = zainteresowania;
    }

    public Użytkownik(int ID_użytkownik, String nazwa_użytkownika, String hasło, String adres_email, String typ_konta, Date data_utworzenia, int wiek, int wzrost, String zainteresowania, Set<Ulubione_przepisy> ulubionePrzepisy, Set<Komentarz> komentarze, Set<Pomiar> pomiar, Set<ProfilDiety> profilDiety, Set<Przepis> przepis) {
        this.ID_użytkownik = ID_użytkownik;
        this.Nazwa_użytkownika = nazwa_użytkownika;
        this.Hasło = hasło;
        this.Adres_email = adres_email;
        this.Typ_konta = typ_konta;
        this.Data_utworzenia = data_utworzenia;
        this.Wiek = wiek;
        this.Wzrost = wzrost;
        this.Zainteresowania = zainteresowania;
        this.ulubionePrzepisy = ulubionePrzepisy;
        this.komentarze = komentarze;
        this.pomiar = pomiar;
        this.profilDiety = profilDiety;
        this.przepis = przepis;
    }

    public Set<Ulubione_przepisy> getUlubionePrzepisy() {
        return ulubionePrzepisy;
    }

    public void setUlubionePrzepisy(Set<Ulubione_przepisy> ulubionePrzepisy) {
        this.ulubionePrzepisy = ulubionePrzepisy;
    }

    public Set<Komentarz> getKomentarze() {
        return komentarze;
    }

    public void setKomentarze(Set<Komentarz> komentarze) {
        this.komentarze = komentarze;
    }

    public Set<Pomiar> getPomiar() {
        return pomiar;
    }

    public void setPomiar(Set<Pomiar> pomiar) {
        this.pomiar = pomiar;
    }

    public Set<ProfilDiety> getProfilDiety() {
        return profilDiety;
    }

    public void setProfilDiety(Set<ProfilDiety> profilDiety) {
        this.profilDiety = profilDiety;
    }

    public Set<Przepis> getPrzepis() {
        return przepis;
    }

    public void setPrzepis(Set<Przepis> przepis) {
        this.przepis = przepis;
    }

    @Override
    public String toString() {
        return "Użytkownik{" +
                "ID_użytkownik=" + ID_użytkownik +
                ", Nazwa_użytkownika='" + Nazwa_użytkownika + '\'' +
                ", Hasło='" + Hasło + '\'' +
                ", Adres_email='" + Adres_email + '\'' +
                ", Typ_konta='" + Typ_konta + '\'' +
                ", Data_utworzenia=" + Data_utworzenia +
                ", Wiek=" + Wiek +
                ", Wzrost=" + Wzrost +
                ", Zainteresowania='" + Zainteresowania + '\'' +
                ", ulubionePrzepisy=" + ulubionePrzepisy +
                ", komentarze=" + komentarze +
                ", pomiar=" + pomiar +
                ", profilDiety=" + profilDiety +
                ", przepis=" + przepis +
                '}';
    }
}
