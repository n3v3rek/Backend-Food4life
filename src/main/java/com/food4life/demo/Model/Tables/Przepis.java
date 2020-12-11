package com.food4life.demo.Model.Tables;

import com.food4life.demo.Model.JoinTables.Komentarz;
import com.food4life.demo.Model.JoinTables.Przepis_produkt;
import com.food4life.demo.Model.JoinTables.Ulubione_przepisy;

import javax.persistence.*;

import java.io.Serializable;

import java.sql.Date;

import java.util.Set;

@Entity
@Table(name = "Przepis")
public class Przepis  implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column (name = "ID_przepisu")
    private int ID_przepisu;

    @Column (name = "ID_użytkownika")
    private int ID_użytkownika;

    @Column (name = "Nazwa")
    private String Nazwa;

    @Column (name = "Opis")
    private String Opis;

    @Column (name = "Treść_Przepisu")
    private String Treść_Przepisu;

    @Column (name = "Licznik_polubień")
    private int Licznik_polubień;

    @Column (name = "Średnia_ocena")
    private double Średnia_ocena;

    @Column (name = "Data_utworzenia")
    private Date Data_utworzenia;

    @OneToMany(mappedBy = "Przepis")
    private Set<Ulubione_przepisy> ulubionePrzepisy;

    @OneToMany(mappedBy = "Przepis")
    private Set<Komentarz> komentarze;

    @OneToMany(mappedBy = "Przepis")
    private Set<Przepis_produkt> PrzepisProdukt;

    @ManyToOne
    @JoinColumn(name = "ID_użytkownika",nullable = true)
    private Użytkownik użytkownik;

    @OneToOne(mappedBy = "Przepis")
    private Posiłek posiłek;

    public Przepis() { }

    public Przepis(int ID_przepisu, int ID_użytkownika, String nazwa, String opis, String treść_Przepisu, int licznik_polubień, double średnia_ocena, Date data_utworzenia) {
        this.ID_przepisu = ID_przepisu;
        this.ID_użytkownika = ID_użytkownika;
        this.Nazwa = nazwa;
        this.Opis = opis;
        this.Treść_Przepisu = treść_Przepisu;
        this.Licznik_polubień = licznik_polubień;
        this.Średnia_ocena = średnia_ocena;
        this.Data_utworzenia = data_utworzenia;
    }

    public int getID_przepisu() {
        return ID_przepisu;
    }

    public void setID_przepisu(int ID_przepisu) {
        this.ID_przepisu = ID_przepisu;
    }

    public int getID_użytkownika() {
        return ID_użytkownika;
    }

    public void setID_użytkownika(int ID_użytkownika) {
        this.ID_użytkownika = ID_użytkownika;
    }

    public String getNazwa() {
        return Nazwa;
    }

    public void setNazwa(String nazwa) {
        this.Nazwa = nazwa;
    }

    public String getOpis() {
        return Opis;
    }

    public void setOpis(String opis) {
        this.Opis = opis;
    }

    public String getTreść_Przepisu() {
        return Treść_Przepisu;
    }

    public void setTreść_Przepisu(String treść_Przepisu) {
        this.Treść_Przepisu = treść_Przepisu;
    }

    public int getLicznik_polubień() {
        return Licznik_polubień;
    }

    public void setLicznik_polubień(int licznik_polubień) {
        this.Licznik_polubień = licznik_polubień;
    }

    public double getŚrednia_ocena() {
        return Średnia_ocena;
    }

    public void setŚrednia_ocena(double średnia_ocena) {
        this.Średnia_ocena = średnia_ocena;
    }

    public Date getData_utworzenia() {
        return Data_utworzenia;
    }

    public void setData_utworzenia(Date data_utworzenia) {
        this.Data_utworzenia = data_utworzenia;
    }

    public Przepis(int ID_przepisu, int ID_użytkownika, String nazwa, String opis, String treść_Przepisu, int licznik_polubień, double średnia_ocena, Date data_utworzenia, Set<Ulubione_przepisy> ulubionePrzepisy, Set<Komentarz> komentarze, Set<Przepis_produkt> przepisProdukt, Użytkownik użytkownik, Posiłek posiłek) {
        this.ID_przepisu = ID_przepisu;
        this.ID_użytkownika = ID_użytkownika;
        this.Nazwa = nazwa;
        this.Opis = opis;
        this.Treść_Przepisu = treść_Przepisu;
        this.Licznik_polubień = licznik_polubień;
        this.Średnia_ocena = średnia_ocena;
        this.Data_utworzenia = data_utworzenia;
        this.ulubionePrzepisy = ulubionePrzepisy;
        this.komentarze = komentarze;
        this.PrzepisProdukt = przepisProdukt;
        this.użytkownik = użytkownik;
        this.posiłek = posiłek;
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

    public Set<Przepis_produkt> getPrzepisProdukt() {
        return PrzepisProdukt;
    }

    public void setPrzepisProdukt(Set<Przepis_produkt> przepisProdukt) {
        this.PrzepisProdukt = przepisProdukt;
    }

    public Użytkownik getUżytkownik() {
        return użytkownik;
    }

    public void setUżytkownik(Użytkownik użytkownik) {
        this.użytkownik = użytkownik;
    }

    public Posiłek getPosiłek() {
        return posiłek;
    }

    public void setPosiłek(Posiłek posiłek) {
        this.posiłek = posiłek;
    }

    @Override
    public String toString() {
        return "Przepis{" +
                "ID_przepisu=" + ID_przepisu +
                ", ID_użytkownika=" + ID_użytkownika +
                ", Nazwa='" + Nazwa + '\'' +
                ", Opis='" + Opis + '\'' +
                ", Treść_Przepisu='" + Treść_Przepisu + '\'' +
                ", Licznik_polubień=" + Licznik_polubień +
                ", Średnia_ocena=" + Średnia_ocena +
                ", Data_utworzenia=" + Data_utworzenia +
                ", ulubionePrzepisy=" + ulubionePrzepisy +
                ", komentarze=" + komentarze +
                ", PrzepisProdukt=" + PrzepisProdukt +
                ", użytkownik=" + użytkownik +
                ", posiłek=" + posiłek +
                '}';
    }
}
