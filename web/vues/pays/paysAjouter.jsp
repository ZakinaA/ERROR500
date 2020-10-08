<%-- 
    Document   : paysAjouter
    Created on : 6 oct. 2020, 09:03:16
    Author     : Thibault
--%>

<%@page import="formulaires.PaysForm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pays Ajouter</title>
    </head>
    <body>
        <h1>NOUVEAU PAYS</h1>
        <%
            PaysForm form = (PaysForm)request.getAttribute("form");
        %>
        
        <form class="form-inline" action="ajouterPays" method="POST">
                <label for="code">CODE : </label>
                <input id="code" type="text" name="code"  size="3" maxlength="3">
                </br>
                
                <label for="nom">NOM : </label>
                <input id="nom"  type="text"  name="nom" size="30" maxlength="30">      
                 </br>

                <input type="submit" name="valider" id="valider" value="Valider"/>
            </form>
    </body>
</html>
