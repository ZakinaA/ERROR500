<%-- 
    Document   : listerLesPays
    Created on : 8 oct. 2020, 14:43:56
    Author     : Thibault
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modele.Pays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../css/style.css">
        <title>LISTE DES PAYS</title>
    </head>
    <body>
        <h1 class="Titre">LISTE DES PAYS</h1>
         <%
        ArrayList<Pays> lesPays = (ArrayList)request.getAttribute("pLesPays");
        %>
        <table  class="table table-bordered table-striped table-condensed" border="2">
            <thead>
                <tr>
                    <th>code</th>
                    <th>nom</th>
            <br>
            <br>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <%
                    for(int i = 0; i < lesPays.size();i++)
                    {

                        Pays unPays = lesPays.get(i);
                        out.println("<tr><td>");
                        out.println(unPays.getCode());
                        out.println("</a></td>");

                        out.println("<td>");
                        out.println(unPays.getNom());
                        out.println("</td>");
                        
                    }
                    %>
                </tr>
            </tbody>
        </table>
    </body>
</html>