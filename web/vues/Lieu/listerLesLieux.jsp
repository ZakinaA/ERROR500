<%-- 
    Document   : listerLesLieux
    Created on : 8 oct. 2020, 14:30:10
    Author     : Alexis 
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="modele.Lieu"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liste des lieux</title>
    </head>
    <body>
        <h1>Liste des lieux</h1>
        
            <%
        ArrayList<Lieu> lesLieux = (ArrayList)request.getAttribute("pLesLieux");
        %>
        
        
         <table  class="table table-bordered table-striped table-condensed">  
            <thead>
                <tr>             
                    <th>Id</th>
                    <th>Ville</th>
                    <th>Nombres boxes</th>
                    <th>Commentaire</th>                
            <br>
            <br>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <%
                        for(int i =0; i<lesLieux.size();i++)
                        {
                            Lieu unLieu = lesLieux.get(i);
                            out.println("<tr><td>");
                            out.println(unLieu.getId());
                              out.println("</a></td>");
                              
                              out.println("<td>");
                            out.println(unLieu.getVille());
                            out.println("</td>");
                            
                             out.println("<td>");
                            out.println(unLieu.getNbBoxes());
                            out.println("</td>");
                         
                            out.println("<td>");
                            out.println(unLieu.getCommentaires());
                            out.println("</td>");
                        }
        
        
                        %>
              </tr>
            </tbody>
        </table>
    </body>
</html>
