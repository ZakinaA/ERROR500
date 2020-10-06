<%-- 
    Document   : paysConsulter
    Created on : 6 oct. 2020, 09:03:34
    Author     : Thibault
--%>

<%@page import="modele.Pays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultation Pays</title>
    </head>
    <body>
        <h1>Infos Pays</h1>
        
        <%
        Pays unPays = (Pays)request.getAttribute("pPays");
        %>
        
        <table class="table table-bordered table-striped table-condensed">
            <tr><td>CODE :</td><td><% out.println(unPays.getCode());%></td></tr>
            <tr><td>NOM :</td><td><%  out.println(unPays.getNom());%></td>  </tr>
            
              </td></tr>
        </table>
    </body>
</html>
