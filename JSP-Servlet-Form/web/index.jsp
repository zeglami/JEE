<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">Bienvenue au sondage des developpeurs!<br></h1>
        <h3  align="center">Veuillez indiquer les languages de programmation dont vous etes bien:</h3><br><br>
        <form action='ControlServ'>
            <table align="center">
                <tr> 
                    <td><label>Nom complet:</label></td>
                    <td> <input type="text" name="nom" /></td>
            
                </tr>
                <tr>
                    <td>  <label>Java:</label></td>
                    <td>   <input type="checkbox" name="L1" value="Java"/></td></tr>
                <tr> 
              
                    <td>     <label>Groovy:</label></td>
                    <td>  <input type="checkbox" name="L1" value="Groovy"/></td></tr>
            
              
                <tr>
                    <td>      <label>Scala:</label></td>
                    <td>   <input type="checkbox" name="L1" value="Scala" /></td>
                </tr>
            
              
                <tr>
                     <td>   <label>Ruby:</label> </td>
                     <td><input type="checkbox" name="L1" value="Ruby"/></td>
                </tr>
                <tr>   
                    <td  colspan="2">        <input type="submit" value="Envoyer" id="b1" name="btn" ></td>
                    
                </tr>
            </table> 
        </form>
    </body>
</html>
