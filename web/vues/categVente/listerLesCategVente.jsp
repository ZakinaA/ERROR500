<%-- 
    Document   : listerLesCategVente
    Created on : 5 nov. 2020, 14:06:37
    Author     : Alexis
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modele.CategVente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liste des categorie de vente</title>
    </head>
    <body>
        
        
         <h1>Liste des categories de vente</h1>
         
             <%
        ArrayList<CategVente> lesCategVentes = (ArrayList)request.getAttribute("pLesCategVente");
        %>
        
        
         <table  class="table table-bordered table-striped table-condensed">  
            <thead>
                <tr>             
                    <th>code</th>
                    <th>libelle</th>
                                  
            <br>
            <br>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <%
                        for(int i =0; i<lesCategVentes.size();i++)
                        {
                            CategVente uneCategVente = lesCategVentes.get(i);
                            out.println("<tr><td>");
                            out.println(uneCategVente.getCode());
                              out.println("</a></td>");
                              
                              out.println("<td>");
                            out.println(uneCategVente.getLibelle());
                            out.println("</td>");
                            
                          
                            
                      /*        out.println("<td><a href ='../ServletAdmin/lieuModifier?idLieu="+ unLieu.getId()+ "'>");
                        out.println("Modifier lieu");
                        out.println("</td>");
                        
                        out.println("<td><a href ='../ServletAdmin/supprimerLieu?idLieu="+ unLieu.getId()+ "'>");
                        out.println("Supprimer");
                        out.println("</td>");*/


                        }
        
        
                        %>
              </tr>
            </tbody>
        </table>  
         </body>
</html>
        
   