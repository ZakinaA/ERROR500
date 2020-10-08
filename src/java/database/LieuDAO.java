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
import modele.Lieu;


/**
 *
 * @author sio2
 */
public class LieuDAO {
    
      Connection connection=null;
    static PreparedStatement requete=null;
    static ResultSet rs=null;
    
    
    public static Lieu AjouterLieu(Connection connection, Lieu unLieu){
        try
        {
            //preparation de la requete
            // id (clé primaire de la table client) est en auto_increment,donc on ne renseigne pas cette valeur
            // la paramètre RETURN_GENERATED_KEYS est ajouté à la requête afin de pouvoir récupérer l'id généré par la bdd (voir ci-dessous)
            // supprimer ce paramètre en cas de requête sans auto_increment.
            requete=connection.prepareStatement("INSERT INTO lieu ( id, ville,nbBoxes,commentaire)\n" +
                    "VALUES (?,?,?,?)", requete.RETURN_GENERATED_KEYS );
            requete.setInt(1, unLieu.getId());
            requete.setString(2, unLieu.getVille());
           requete.setInt(3, unLieu.getNbBoxes());
            requete.setString(4, unLieu.getCommentaires());
            
  /* Exécution de la requête */
           
   requete.executeUpdate();
            
            
        }   
        catch (SQLException e) 
        {
            e.printStackTrace();
            //out.println("Erreur lors de l’établissement de la connexion");
        }
        return unLieu ;    
    }
    
    
}