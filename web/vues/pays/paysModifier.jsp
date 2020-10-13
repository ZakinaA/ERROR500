<%-- 
    Document   : paysModifier
    Created on : 13 oct. 2020, 09:05:48
    Author     : Thibault
--%>


<%@page import="modele.Pays"%>
<%@page import="formulaires.PaysForm"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pays Modifier</title>
    </head>
    <body>
        <h1>MODIFIER PAYS</h1>
        <%
            PaysForm form = (PaysForm)request.getAttribute("form");
            Pays lePays = (Pays)request.getAttribute("pLePays");
        %>
        
        <form class="form-inline" action="modifierPays" method="POST">
                <label for="code">CODE : </label>
                <input id="code" type="text" name="code"  size="3" maxlength="3" value ="<%out.println(lePays.getCode());%>">
                
                </br>
                
                <label for="nom">NOM : </label>
                <input id="nom"  type="text"  name="nom" size="30" maxlength="30" value="<%out.println(lePays.getNom());%>">      
                 </br>

                <input type="submit" name="valider" id="valider" value="Valider"/>
            </form>
    </body>
</html>