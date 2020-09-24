/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import java.util.ArrayList;

/**
 *
 * @author sio2
 */
public class Cheval {
    private String sire;
    private String nom;
    private String sexe;
    private String prixDepart;
    private TypeCheval unTypeCheval;
    private Cheval unPere;
    private Cheval uneMere;
    private Vendeur unVendeur;
    private ArrayList<Lot> lesLots;
    private ArrayList<Prix> lesPrix;

    public Cheval() {
    }

    public Cheval(String sire, String nom, String sexe, String prixDepart, TypeCheval unTypeCheval, Cheval unPere, Cheval uneMere, Vendeur unVendeur) {
        this.sire = sire;
        this.nom = nom;
        this.sexe = sexe;
        this.prixDepart = prixDepart;
        this.unTypeCheval = unTypeCheval;
        this.unPere = unPere;
        this.uneMere = uneMere;
        this.unVendeur = unVendeur;
    }

    public String getSire() {
        return sire;
    }

    public String getNom() {
        return nom;
    }

    public String getSexe() {
        return sexe;
    }

    public String getPrixDepart() {
        return prixDepart;
    }

    public TypeCheval getUnTypeCheval() {
        return unTypeCheval;
    }

    public Cheval getUnPere() {
        return unPere;
    }

    public Cheval getUneMere() {
        return uneMere;
    }

    public Vendeur getUnVendeur() {
        return unVendeur;
    }

    public ArrayList<Lot> getLesLots() {
        return lesLots;
    }

    public ArrayList<Prix> getLesPrix() {
        return lesPrix;
    }

    public void setSire(String sire) {
        this.sire = sire;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public void setPrixDepart(String prixDepart) {
        this.prixDepart = prixDepart;
    }

    public void setUnTypeCheval(TypeCheval unTypeCheval) {
        this.unTypeCheval = unTypeCheval;
    }

    public void setUnPere(Cheval unPere) {
        this.unPere = unPere;
    }

    public void setUneMere(Cheval uneMere) {
        this.uneMere = uneMere;
    }

    public void setUnVendeur(Vendeur unVendeur) {
        this.unVendeur = unVendeur;
    }

    public void setLesLots(ArrayList<Lot> lesLots) {
        this.lesLots = lesLots;
    }

    public void setLesPrix(ArrayList<Prix> lesPrix) {
        this.lesPrix = lesPrix;
    }

    
    
    public void addUnLot(Lot unLot){
        if (lesLots == null){
            lesLots = new ArrayList<Lot>();
        }
        lesLots.add(unLot);
    }
    
    public int getNbLots(){
        return lesLots.size();
    }
    
    public void addUnPrix(Prix unPrix){
        if (lesPrix == null){
            lesPrix = new ArrayList<Prix>();
        }
        lesPrix.add(unPrix);
    }
    
    public int getNbPrix(){
        return lesPrix.size();
    }
  
}
