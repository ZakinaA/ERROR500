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
import modele.Client;
/**
 *
 * @author sio2
 */
public class ChevalDAO {
    
    Connection connection=null;
    static PreparedStatement requete=null;
    static ResultSet rs=null;
    
    /* @author sio2 - 13/10/2020
    /* Méthode permettant de lister toutes les ventes enregistrées en base, triées par date décroissante.
    /* Pour chaque vente, on récupère aussi sa catégorie.
    /* La liste des vente est stockée dans une ArrayList
    */
    public static Cheval getInfoCheval(Connection connection, String idCheval){  
        Cheval unCheval = new Cheval();
        try
        {
            //preparation de la requete     
            //codeCateg="ETE";
            requete=connection.prepareStatement("SELECT c.*, tc.libelle, cl.nom as nom_client, cpere.nom as nom_pere, cmere.nom as nom_mere\n" +
"FROM cheval c, cheval cmere, cheval cpere, typecheval tc, client cl \n" +
"WHERE c.idType=tc.id\n" +
"AND cmere.id=c.Mère\n" +
"AND cpere.id=c.Père    \n" +
"AND c.idClient=cl.id \n" +
"AND c.id = ?;");
            requete.setString(1, idCheval);
            //executer la requete
            rs=requete.executeQuery();
             
            //On hydrate l'objet métier Client avec les résultats de la requête
            while ( rs.next() ) {  
                
              
                unCheval.setId(rs.getInt("c.id"));
                
                TypeCheval unTypeCheval = new TypeCheval();
                unTypeCheval.setLibelle(rs.getString("tc.libelle"));
                
                
                Cheval unChevalPere = new Cheval();
                unChevalPere.setNom(rs.getString("nom_pere"));
                
                Cheval unChevalMere = new Cheval();
                unChevalMere.setNom(rs.getString("nom_mere"));
                
                Client unClient = new Client();
                unClient.setNom(rs.getString("nom_client"));
                
                unCheval.setUnPere(unChevalPere);
                unCheval.setUneMere(unChevalMere);
                unCheval.setUnClient(unClient);
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
