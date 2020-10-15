<%--
    Document   : infoCheval
    Created on : 24 sept. 2020, 10:03:18
    Author     : sio2
--%>

<%@page import="modele.Cheval"%>
<%@page import="modele.Client"%>
<%@page import="modele.TypeCheval"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>INFORMATIONS CHEVAL</title>
    </head>
    <body>
        <h1>INFORMATIONS CHEVAL</h1>
         <%
        Cheval unCheval = (Cheval)request.getAttribute("punCheval");
        %>
        <table  class="table table-bordered table-striped table-condensed">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Sire</th>
                    <th>Nom</th>
                    <th>Sexe</th>
                    <th>Race</th>
                    <th>Père</th>
                    <th>Mère</th>
                    <th>Propriétaire</th>
                    
                    <th></th>
            <br>
            <br>
                </tr>
                
            </thead>
            <tbody>
                <tr>
                    <%

                        out.println("<tr><td>");
                        out.println(unCheval.getId());
                        out.println("</td>");
                        
                        out.println("<td>");
                        out.println(unCheval.getSire());
                        out.println("</td>");
                        
                        out.println("<td>");
                        out.println(unCheval.getNom());
                        out.println("</td>");
                        
                        out.println("<td>");
                        out.println(unCheval.getSexe());
                        out.println("</td>");
                        
                        out.println("<td>");
                        out.println(unCheval.getUnTypeCheval().getLibelle());
                        out.println("</td>");
                        
                        
                        if (unCheval.getUnPere().getId() != 999){
                            out.println("<td><a href ='../ServletCheval/infoCheval?idCheval="+ unCheval.getUnPere().getId()+ "'>");
                        out.println(unCheval.getUnPere().getNom());
                        out.println("</td>");
                        }
                        else{
                        out.println("<td>");
                        out.println(unCheval.getUnPere().getNom());
                        out.println("</td>");
                        }
                        
                        if (unCheval.getUneMere().getId() != 999){
                            out.println("<td><a href ='../ServletCheval/infoCheval?idCheval="+ unCheval.getUneMere().getId()+ "'>");
                        out.println(unCheval.getUneMere().getNom());
                        out.println("</td>");
                        }
                        else{
                        out.println("<td>");
                        out.println(unCheval.getUneMere().getNom());
                        out.println("</td>");
                        }

                        out.println("<td>");
                        out.println(unCheval.getUnClient().getNom());
                        out.println("</td>");
                        
                    %>
               
            </tbody>
        </table>
                    
        <table  class="table table-bordered table-striped table-condensed">
            <thead>
                <tr>
                    <th>Photo du Cheval</th>
                    
            <br>
            <br>
                </tr>
                
            </thead>
            <tbody>
                <tr>
                    <%
                        out.println("<td>");
                    %>
                <img src="<%out.println(unCheval.getCheminPhoto());%>"
                             width="500"
                             height="350">
                    <%
                        out.println("</td>");
                    %>
               
            </tbody>
        </table>           
                
        
    </body>
</html>
