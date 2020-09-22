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
    private int sire;
    private String nom;
    private String sexe;
    private String prixDepart;
    private TypeCheval unTypeCheval;
    private ArrayList<Lot> lesLots;
    private ArrayList<Prix> lesPrix;
    private ArrayList<Vendeur> lesVendeurs;

    public Cheval() {
    }

    public Cheval(int sire, String nom, String sexe, String prixDepart, TypeCheval unTypeCheval) {
        this.sire = sire;
        this.nom = nom;
        this.sexe = sexe;
        this.prixDepart = prixDepart;
        this.unTypeCheval = unTypeCheval;
    }

    public int getSire() {
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

    public ArrayList<Lot> getLesLots() {
        return lesLots;
    }

    public ArrayList<Prix> getLesPrix() {
        return lesPrix;
    }

    public ArrayList<Vendeur> getLesVendeurs() {
        return lesVendeurs;
    }

    public void setSire(int sire) {
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

    public void setLesLots(ArrayList<Lot> lesLots) {
        this.lesLots = lesLots;
    }

    public void setLesPrix(ArrayList<Prix> lesPrix) {
        this.lesPrix = lesPrix;
    }

    public void setLesVendeurs(ArrayList<Vendeur> lesVendeurs) {
        this.lesVendeurs = lesVendeurs;
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
    
    public void addUnVendeur(Vendeur unVendeur){
        if (lesVendeurs == null){
            lesVendeurs = new ArrayList<Vendeur>();
        }
        lesVendeurs.add(unVendeur);
    }
    
    public int getNbVendeurs(){
        return lesVendeurs.size();
    }
    
    
    
    
}
