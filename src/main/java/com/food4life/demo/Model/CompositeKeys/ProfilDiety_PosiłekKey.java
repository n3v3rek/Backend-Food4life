package com.food4life.demo.Model.CompositeKeys;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import java.io.Serializable;
import java.util.Objects;

@Embeddable
public class ProfilDiety_PosiłekKey implements Serializable {

    @Column(name ="ID_profilu")
    int profilID;

    @Column (name ="ID_posiłku")
    int posiłekID;

    public ProfilDiety_PosiłekKey() { }

    public ProfilDiety_PosiłekKey(int profilID, int posiłekID) {
        this.profilID = profilID;
        this.posiłekID = posiłekID;
    }

    public int getProfilID() {
        return profilID;
    }

    public void setProfilID(int profilID) {
        this.profilID = profilID;
    }

    public int getPosiłekID() {
        return posiłekID;
    }

    public void setPosiłekID(int posiłekID) {
        this.posiłekID = posiłekID;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ProfilDiety_PosiłekKey that = (ProfilDiety_PosiłekKey) o;
        return profilID == that.profilID &&
                posiłekID == that.posiłekID;
    }

    @Override
    public int hashCode() {
        return Objects.hash(profilID, posiłekID);
    }
}
