<%-- 
    Document   : chevalAjouter
    Created on : 1 oct. 2020, 13:37:30
    Author     : sio2
--%>

<%@page import="modele.Cheval"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cheval Ajouter</title>
    </head>
    <body>
        <h1>NOUVEAU CHEVAL</h1>
        
         <%
                //Client client=(Client)request.getAttribute("client");
                Cheval form = (ChevalForm)request.getAttribute("form");
            %>
        
        <form class="form-inline" action="ajouterCheval" method="POST">
                <label for="code">CODE : </label>
                <input id="code" type="text" name="code"  size="30" maxlength="5">
                </br>
                
                <label for="libelle">LIBELLE : </label>
                <input id="libelle"  type="text"  name="libelle" size="30" maxlength="30">      
                 </br>
               
            <input type="submit" name="valider" id="valider" value="Valider"/>
        </form>
        
    </body>
</html>