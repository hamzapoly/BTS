/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.bts.authentification;

import java.io.*;

import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.swing.JOptionPane;

import com.bts.bd.Maconnexion;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
 


public class authentificationuser extends HttpServlet {

     private static final long serialVersionUID = 1L;

	public void init(ServletConfig config)
	    throws ServletException{
	     super.init(config);
	     }

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		res.setContentType("text/html;charset=UTF-8");
	    req.setCharacterEncoding("UTF8");
		PrintWriter out = res.getWriter();
             
	       
                 boolean bol=false;
                 String log;
                 String pas;
                 Connection connexion = Maconnexion.seconnecter();

               String login=req.getParameter("user");

                String password=req.getParameter("pass");
              //String sql = "select login,password from operateur ";

              try {
                
                  Statement instruction = connexion.createStatement();
                  ResultSet resultat = instruction.executeQuery("select login,mot_pass from user;");
            
             while(resultat.next())
                  {
                 log = resultat.getString(1);
                 pas=resultat.getString(2);

                if(login.equals(log) && password.equals(pas))
                {
                 bol=true;
             	
                  dispatcher = req.getRequestDispatcher("archiver.jsp");
                      }
                 else{

                	 JOptionPane.showMessageDialog(null, "V�rifier votre login et mot de passe");
              dispatcher = req.getRequestDispatcher("loginuser.jsp");}
                 dispatcher.forward(req, res);
             }}
              catch (Exception e){
                  // JOptionPane.showMessageDialog(this,"erreur: ");
                   // return 0;
                }

            
	}
}          

 


