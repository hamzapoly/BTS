package com.bts.user;

import java.io.*;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.swing.JOptionPane;

import com.bts.bd.Maconnexion;

import java.util.Date;


public class Ajout_User extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajout_User() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException,IOException{
		response.setContentType("text/html;charset=UTF-8");
	    request.setCharacterEncoding("UTF8");
                RequestDispatcher dispatcher = null;
  PrintWriter out = response.getWriter();
  Connection con = Maconnexion.seconnecter();
  
  String nom=request.getParameter("nom");
  String prenom=request.getParameter("prenom");
  String login=request.getParameter("login");
  String mot_pass=request.getParameter("mot_pass");

  
  try {
	  
Statement s = con.createStatement();

 String sql1 = "INSERT INTO `user` (`nom`,`prenom`,`login`,`mot_pass`)VALUES ('"+nom+"','"+prenom+"','"+login+"','"+mot_pass+"');";
                     
                      s.executeUpdate(sql1);
              

}
  catch (SQLException e) {
		e.getCause();
		System.out.println("Un probleme de connexion est sourvenu, vérfier la chaine de connexion");

    }

dispatcher = request.getRequestDispatcher("admin.jsp");
dispatcher.forward(request, response);





      



}


}



