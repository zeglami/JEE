<%-- 
    Document   : output
    Created on : 23 nov. 2017, 16:07:32
    Author     : abdelhamid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
         <jsp:useBean id="sondageData1" class="org.cours.servlet.SondageData" scope="request" />
             Merci <%=sondageData1.getNomComplet()%> d'avoir repondu au sondage!
             <br><br>
             Voici vos Choix:<br><br>
             <ul>
                 <%for(String s: sondageData1.getProgLang()) {%>
                 <li><%=s%></li>
                 <%}%>
             </ul>
             
    </body>
</html>
