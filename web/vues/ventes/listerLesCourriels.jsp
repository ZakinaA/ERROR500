<%-- 
    Document   : listerLesCourriels
    Created on : 17 sept. 2020, 13:16:35
    Author     : sio2
--%>

<%@page import="modele.Courriel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="modele.Vente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
            <title>LISTE DES COURRIELS</title>
    </head>
    <body>
        <h1>LISTE DES COURRIELS</h1>
         <%
        ArrayList<Courriel> lesCourriels = (ArrayList)request.getAttribute("pLesCourriels");
        %>
        <table  class="table table-bordered table-striped table-condensed">  
            <thead>
                <tr>             
                    <th>id</th>
                    <th>date</th>
                    <th>objet</th>
                    <th>corps</th>  
                    <th></th>
            <br>
            <br>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <%
                    for(int i = 0; i < lesCourriels.size();i++)
                    {
                        
                        Courriel unCourriel = lesCourriels.get(i);
                        out.println("<tr><td>");
                        out.println(unCourriel.getId());
                        out.println("</a></td>");

                        out.println("<td>");
                        out.println(unCourriel.getDate());
                        out.println("</td>");

                        out.println("<td>");
                        out.println(unCourriel.getObjet());
                        out.println("</td>");

                        out.println("<td>");
                        out.println(unCourriel.getCorps());
                        out.println("</td>");
                        
                    }
                    %>
                </tr>
            </tbody>
        </table>
    </body>
</html>