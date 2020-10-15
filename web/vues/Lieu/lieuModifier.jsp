<%-- 
    Document   : lieuModifier
    Created on : 15 oct. 2020, 09:01:56
    Author     : Alexis
--%>

<%@page import="formulaires.LieuForm"%>
<%@page import="modele.Lieu"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modification d'un lieu</title>
    </head>
    <body>
        <h1>Modifier le lieu</h1>
        <%
        
        LieuForm form = (LieuForm)request.getAttribute("form");
        Lieu leLieu = (Lieu)request.getAttribute("pLeLieu");
        
        %>
                        
                
 <form class="form-inline" action="lieuModifier" method="POST">
               <label for="id">id : </label>
                <input id="id" type="text" name="id"  size="10" maxlength="3" value="<%out.println(leLieu.getId());%>">
                </br>
            <label for="ville">ville : </label>
                <input id="ville" type="text" name="ville"  size="50" maxlength="50" value="<%out.println(leLieu.getVille());%>" >
                </br>
        <label for="nbBoxes"> Nombre box: </label>
                <input id="nbBoxes" type="text" name="nbBoxes"  size="50" maxlength="50" value="<%out.println(leLieu.getNbBoxes());%>">
                </br>
        <label for="commentaire"> Commentaire: </label>
                <input id="commentaire" type="text" name="commentaire"  size="255" maxlength="255" value="<%out.println(leLieu.getCommentaires());%>">
                </br>
        
        
        <input type="submit" name="valider" id="valider" value="Valider"/>
        
    
    </form>
        
    </body>
</html>

