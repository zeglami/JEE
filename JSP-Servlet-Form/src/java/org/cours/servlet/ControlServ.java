package org.cours.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ControlServ", urlPatterns = {"/ControlServ"})
public class ControlServ extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        
        
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            
            SondageData sondageData = new SondageData();
            
            sondageData.setNomComplet(request.getParameter("nom"));
     
            sondageData.setProgLang(request.getParameterValues("L1"));
            
            
            request.setAttribute("sondageData1", sondageData);
                
            request.getRequestDispatcher("output.jsp").forward(request, response);
         
            
        }
    }

  
    
    
    
    
    
    
    
    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
