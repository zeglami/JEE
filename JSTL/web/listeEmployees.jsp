<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="dataSource" driver="org.apache.derby.jdbc.ClientDriver" url="jdbc:derby://localhost:1527/etablissement" user="hasnaa" password="dyani"/>
        <sql:query var="employes" dataSource="${dataSource}">
            select * from employe
        </sql:query>
            
           <table width="100%" bgcolor="white" border="1">
           <tr>
            <th width="25%"> Matricule </th>
            <th width="25%"> Nom </th>
            <th width="25%"> Prenom </th>
            <th width="25%"> Num Service </th> 
            </tr>
            
            <c:forEach var="row" items="${employes.rows}">
            <tr align="center">
                <td> <c:out value="${row.mate}"/></td>
                <td> <c:out value="${row.nom}"/></td>
                <td> <c:out value="${row.prenom}"/></td>
                <td> <c:out value="${row.nser}"/></td>
            </tr>
            </c:forEach >
            </table>
            
    </body>
</html>
