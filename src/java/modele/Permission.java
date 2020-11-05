/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;
import java.util.ArrayList;
/**
 *
 * @author Thibault
 */
public class Permission {
    private String code ;
    private String nom;
    private ArrayList<Role> lesRoles ;
    
    public Permission(){
  
    }

    public Permission(String code, String nom) {
        this.code = code;
        this.nom = nom;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public ArrayList<Role> getLesRoles() {
        return lesRoles;
    }

    public void setLesRoles(ArrayList<Role> lesRoles) {
        this.lesRoles = lesRoles;
    }
    
    public void addRole(Role UnRole){
        
        if (this.lesRoles == null){
            this.lesRoles = new ArrayList<Role>();                  
        }
         lesRoles.add(UnRole);
    }
}
