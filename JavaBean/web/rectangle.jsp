<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


 <%-- SEANCE 2 --%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <jsp:useBean id="rec" class="org.cours.bean.Rectangle">
        
       
        <jsp:setProperty name="rec" property="largeur"/>
        <jsp:setProperty name="rec" property="longueur"/>
        
        </jsp:useBean>
        
        
        
        
        <br><br>
        <form action="" align="center">
            <div>
                <label>Largeur  :</label>
                <input type="number" name="largeur" />
            </div>
            <br>
            <div>
                <label>longueur:</label>
                <input type="number" name="longueur" />
            </div>
            <br>
            <div>
                <button type="submit" name="sub">Perimetre</button>
            </div>
           
        </form>
      
         Le perimetre est egale a :
        <jsp:getProperty name="rec" property="perimetre"/> 
        <%-- On recupere le perimetre car on a ecrit Perimetre.--%>
       
       
        
    </body>
</html>
