<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <jsp:useBean id="cal" class="org.cours.jstl.Calendrier"/>
        <%-- --%>
         <c:out value="${cal.temps}"/> 
         
         <c:set var="heure" value="${cal.heure}" scope="request"/> 
         <br><br>
         <c:out value="${heure}"/> 
         <br><br>
         <c:choose>
           <c:when test="${heure>=0 && heure<=18}">
                         Bonjour!!
          </c:when>
         
          <c:when test="${heure>=18 && heure<=20}">
                         Bonsoir!!
          </c:when>
                         
          <c:otherwise>
                         Bonne nuit!!
          </c:otherwise>
                         
         </c:choose>
                         
                         <br><br>
         
         <c:if test="${heure>14}">
               
              Bonjour!
           
         </c:if>
         
       
    </body>
</html>
