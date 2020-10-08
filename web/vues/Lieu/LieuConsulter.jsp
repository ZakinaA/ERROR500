<%-- 
    Document   : LieuConsulter
    Created on : 6 oct. 2020, 11:33:29
    Author     : sio2
--%>
<%@page import="modele.Lieu"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultation lieu</title>
    </head>
    <body>
        <h1>Info Lieu</h1>
        
            <%
        Lieu unLieu = (Lieu)request.getAttribute("pLieu");
        %>
        
        <table class="table table-bordered table-striped table-condensed">
            <tr><td>Id :</td><td><% out.println(unLieu.getId());%></td></tr>
            <tr><td>Ville :</td><td><%  out.println(unLieu.getVille());%></td>  </tr>
                <tr><td>NbBoxes:</td><td><%  out.println(unLieu.getNbBoxes());%></td>  </tr>
                <tr><td>Commentaire:</td><td><%  out.println(unLieu.getCommentaires());%></td> </tr>
        
          
        </table>
    </body>
</html>
