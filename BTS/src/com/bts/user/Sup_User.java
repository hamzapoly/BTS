/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.bts.user;

import java.io.*;
import java.util.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.swing.JOptionPane;

import com.bts.bd.Maconnexion;


/**
 *
 * @author Administrateur
 */
public class Sup_User extends HttpServlet {

     private static final long serialVersionUID = 1L;
	public void init(ServletConfig config)
	    throws ServletException{
	     super.init(config);
	     }





    protected void doGet(HttpServletRequest req, HttpServletResponse res)
    throws ServletException, IOException {
    	res.setContentType("text/html;charset=UTF-8");
	    req.setCharacterEncoding("UTF8");
        RequestDispatcher dispatcher = null;
        PrintWriter out = res.getWriter();
        Connection con = Maconnexion.seconnecter();
	     res.setContentType("text/html");
	     String id=req.getParameter("id");
            try {

	    
            Statement s = con.createStatement();

           

            String sql ="DELETE FROM user  WHERE id="+id+"";
            s.executeUpdate(sql);

            





                }
            
            



            catch(Exception e){
        System.out.println("Exception is ;"+e);
        }
            dispatcher = req.getRequestDispatcher("admin.jsp");
            dispatcher.forward(req, res);
      
	}


    }



