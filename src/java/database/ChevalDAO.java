/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modele.Cheval;
import modele.Client;
import modele.Pays;
import modele.TypeCheval;
import modele.Vendeur;
/**
 *
 * @author sio2
 */
public class ChevalDAO {
    
    Connection connection=null;
    static PreparedStatement requete=null;
    static ResultSet rs=null;
    
    /* @author Zakina - 22/06/2017
    /* Méthode permettant de lister toutes les ventes enregistrées en base, triées par date décroissante.
    /* Pour chaque vente, on récupère aussi sa catégorie.
    /* La liste des vente est stockée dans une ArrayList
    */
    public static Cheval getInfoCheval(Connection connection, String sireCheval){  
        Cheval unCheval = new Cheval();
        try
        {
            //preparation de la requete     
            //codeCateg="ETE";
            requete=connection.prepareStatement("SELECT c.*, tc.libelle, cl.nom FROM cheval c, typecheval tc, vendeur v, client cl where c.idType=tc.id  and v.ven_cli=c.idVendeur and v.ven_cli=cl.id and sire LIKE ? ");
            requete.setString(1, sireCheval);
            //executer la requete
            rs=requete.executeQuery();
             
            //On hydrate l'objet métier Client avec les résultats de la requête
            while ( rs.next() ) {  
                
              
                unCheval.setSire(rs.getString("sire"));
                
                TypeCheval unTypeCheval = new TypeCheval();
                unTypeCheval.setLibelle(rs.getString("tc.libelle"));
                
                
                Cheval unChevalPere = new Cheval();
                unChevalPere.setNom(rs.getString("Père"));
                
                Cheval unChevalMere = new Cheval();
                unChevalMere.setNom(rs.getString("Mère"));
                
                Vendeur unVendeur = new Vendeur();
                unVendeur.setNom(rs.getString("cl.nom"));
                
                unCheval.setUnPere(unChevalPere);
                unCheval.setUneMere(unChevalMere);
                unCheval.setUnVendeur(unVendeur);
                unCheval.setUnTypeCheval(unTypeCheval);
                /*CategVente uneCateg = new CategVente();
                uneCateg.setCode(rs.getString("code"));  // on aurait aussi pu prendre CodeCateg
                uneCateg.setLibelle(rs.getString("libelle"));*/
              
            }
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        return unCheval;    
    }
}
