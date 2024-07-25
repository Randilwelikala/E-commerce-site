/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Acer
 */
@WebServlet("/root")
public class root extends HttpServlet {
    
    private productDAO productDAO;
    public root(){
        this.productDAO = new productDAO();
    }
    
    protected void doGet(HttpServletRequest req,HttpServletResponse res)
            throws ServletException,IOException{
        String action=req.getRequestURI();
        String[] urlpartns = action.split("/");
        String url="";
        if(urlpartns.length>3){
            url=urlpartns[3];
            
        }else{
            url="default value";
        }
        System.out.println(url);
        switch(url){
            case "new":
                System.out.println("new rute");
                break;
            default:            
        {
            try {
                show_homepage(req,res);
            } catch (SQLException ex) {
                Logger.getLogger(root.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
                break;
                
        }
        
    }
    protected void doPost(HttpServletRequest req,HttpServletResponse res)
            throws ServletException,IOException{
        this.doGet(req, res);
        
    }
    private void show_homepage(HttpServletRequest req,HttpServletResponse res)
            throws ServletException,IOException, SQLException{
        try{
            List<product> allproducts = productDAO.selectallProducts();
            RequestDispatcher dispatcher =req.getRequestDispatcher("/index.jsp");
            req.setAttribute("allproduct", allproducts);
            dispatcher.forward(req,res);
            
        }catch(IOException | ServletException e){
            e.printStackTrace();
        }
}
    
    
}
    
    
    


    
        
    
    

