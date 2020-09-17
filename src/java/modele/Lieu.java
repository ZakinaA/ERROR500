/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

import java.util.ArrayList;

/**
 *
 * @author Zakina
 */
public class Lieu {
    private int id ;
    private String ville;
    private String nbBoxes;
    private String commentaires;
    private ArrayList<Vente> lesVentes ;

    public Lieu() {
    }

    public Lieu(int id, String ville, String nbBoxes, String commentaires) {
        this.id = id;
        this.ville = ville;
        this.nbBoxes = nbBoxes;
        this.commentaires = commentaires;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public String getNbBoxes() {
        return nbBoxes;
    }

    public void setNbBoxes(String nbBoxes) {
        this.nbBoxes = nbBoxes;
    }

    public String getCommentaires() {
        return commentaires;
    }

    public void setCommentaires(String commentaires) {
        this.commentaires = commentaires;
    }

    public ArrayList<Vente> getLesVentes() {
        return lesVentes;
    }

    public void setLesVentes(ArrayList<Vente> lesVentes) {
        this.lesVentes = lesVentes;
    }
    
    public void addVente(Vente pUneVente){
        
        if (this.lesVentes == null){
            this.lesVentes = new ArrayList<Vente>();                  
        }
         lesVentes.add(pUneVente);
    }
    
    public int getNbVente(){
        return lesVentes.size();
    }
    
}
