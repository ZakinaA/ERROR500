<%-- 
    Document   : supprimerLieu
    Created on : 15 oct. 2020, 15:56:28
    Author     : Alexis
--%>


<%@page import="modele.Lieu"%>
<%@page import="formulaires.LieuForm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pays Supprimer</title>
    </head>
    <body>
        <h1>SUPPRIMER PAYS</h1>
        <%
            LieuForm form = (LieuForm)request.getAttribute("form");
            Lieu leLieu = (Lieu)request.getAttribute("pLeLieu");
        %>
        
        <form class="form-inline" action="supprimerLieu" method="POST">
                <label for="id">Id : </label>
                <input id="id" type="text" name="id"  size="3" maxlength="3" value ="<%out.println(leLieu.getId());%>" readonly>
                
                </br>
                
                <label for="ville">Ville : </label>
                <input id="ville"  type="text"  name="ville" size="30" maxlength="30" value="<%out.println(leLieu.getVille());%>" readonly>      
                 </br>
                 
                 <label for="nbBoxes">Nombres Boxes : </label>
                <input id="nbBoxes"  type="text"  name="nbBoxes" size="30" maxlength="30" value="<%out.println(leLieu.getNbBoxes());%>" readonly>      
                 </br>
                 
                  <label for="commentaire">Commentaire : </label>
                <input id="commentaire"  type="text"  name="commentaire" size="30" maxlength="30" value="<%out.println(leLieu.getCommentaires());%>" readonly>      
                 </br>

                <input type="submit" name="valider" id="valider" value="Valider" />
            </form>
    </body>
</html>
