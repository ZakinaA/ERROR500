<%-- 
    Document   : AjouterLieu
    Created on : 6 oct. 2020, 09:17:48
    Author     : sio2
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nouveau Lieu</title>
    </head>
    <body>
        <h1>Ajouter un lieu</h1>
        
        <form class="form-inline" action="AjouterLieu" method="POST">
                <label for="id">id : </label>
                <input id="id" type="text" name="id"  size="10" maxlength="3">
                </br>
            <label for="ville">ville : </label>
                <input id="ville" type="text" name="ville"  size="50" maxlength="50">
                </br>
        <label for="Nombre box"> Nombre box: </label>
                <input id="Nombre box" type="text" name="nbBoxes"  size="50" maxlength="50">
                </br>
        <label for="Commentaire"> Commentaire: </label>
                <input id="Commentaire" type="text" name="Commentaire"  size="50" maxlength="50">
                </br>
        
        
        <input type="submit" name="valider" id="valider" value="Valider"/>
        
    
    </form>
        
    </body>
</html>
