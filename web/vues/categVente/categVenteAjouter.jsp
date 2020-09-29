<%-- 
    Document   : categVenteAjouter
    Created on : 24 sept. 2020, 14:06:24
    Author     : sio2
--%>

<%@page import="modele.Vente"%>
<%@page import="modele.Client"%>
<%@page import="java.util.ArrayList"%>
<%@page import="formulaires.CategVenteForm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categ Vente Ajouter</title>
    </head>
    <body>
        <h1>NOUVELLE CATEG VENTE</h1>
        
         <%
                //Client client=(Client)request.getAttribute("client");
                CategVenteForm form = (CategVenteForm)request.getAttribute("form");
            %>
        
        <form class="form-inline" action="ajouterCategVente" method="POST">
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