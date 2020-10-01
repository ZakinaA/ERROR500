<%-- 
    Document   : listerLesLots
    Created on : 17 sept. 2020, 15:29:21
    Author     : sio2
--%>

<%@page import="modele.Lot"%>
<%@page import="modele.Cheval"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>LISTE DES LOTS</title>
    </head>
    <body>
        <h1>LISTE DES LOTS</h1>
         <%
        ArrayList<Lot> lesLots = (ArrayList)request.getAttribute("plesLots");
        %>
        <table  class="table table-bordered table-striped table-condensed">  
            <thead>
                <tr>             
                    <th>id</th>
                    <th>prixDepart</th>
                    <th>Nom du cheval</th>
                    <th></th>
            <br>
            <br>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <%
                    for(int i = 0; i < lesLots.size();i++)
                    {
                        
                        Lot unLot = lesLots.get(i);
                        out.println("<tr><td>");
                        out.println(unLot.getId());
                        out.println("</a></td>");

                        out.println("<td>");
                        out.println(unLot.getPrixdepart());
                        out.println("</td>");
                        
                        out.println("<td>");
                        out.println(unLot.getUnCheval().getNom());
                        out.println("</td>");
                        
                        out.println("<td><a href ='../ServletCheval/infoCheval?idCheval="+ unLot.getUnCheval().getId()+ "'>");
                        out.println("Informations Cheval");
                        out.println("</td>");

                    }
                    %>
                </tr>
            </tbody>
        </table>
    </body>
</html>