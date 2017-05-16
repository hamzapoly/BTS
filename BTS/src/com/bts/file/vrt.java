package com.bts.file;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

import org.apache.tomcat.util.http.fileupload.IOUtils;

import com.bts.bd.Maconnexion;


@MultipartConfig(maxFileSize = 16177215)	// upload file's size up to 16MB
public class vrt extends HttpServlet {
	
	
/*	private String getValeur( Part part ) throws IOException {
	    BufferedReader reader = new BufferedReader( new InputStreamReader( part.getInputStream(), "UTF-8" ) );
	    StringBuilder valeur = new StringBuilder();
	    char[] buffer = new char[1024];
	    int longueur = 0;
	    while ( ( longueur = reader.read( buffer ) ) > 0 ) {
	        valeur.append( buffer, 0, longueur );
	    }
	    return valeur.toString();
	}*/
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	   	Connection con = Maconnexion.seconnecter();
    	
	   	Part Part = request.getPart("contenent");
	   	//String s3=filePart.getName();
	   	//tring valeurChamp = getValeur(filePart);
    	 RequestDispatcher dispatcher = null;
    	// InputStream inputStream = filePart.getInputStream();
    	 //BufferedReader fichier = new BufferedReader(new FileReader(monFichier));
    	String ligne="";
    
    		BufferedReader reader = new BufferedReader( new InputStreamReader(Part.getInputStream(), "UTF-8" ) );
    	    StringBuilder valeur = new StringBuilder();
    	
        	char[] tab = new char[1024];
        	int longueur=0;
        	while ( ( longueur = reader.read( tab ) ) > 0 ) {
    	        valeur.append( tab, 0, longueur );
    	        System.out.println(valeur.toString()); 
    	    }
    	   
    	
      String k="";
      k+=tab[1]+tab[2];
    	
    	
    
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
 try {
				Statement s = con.createStatement();
				String sql = "INSERT INTO  vrt_global (sens,codval,natrem,codrem,codcar,dateope,numlot,codeenr,codedev,rang,mtot,nbrtot,zonlib,filename,datcr) values ('"+tab[0]+"','"+k+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"')";
                s.executeUpdate(sql);
			
 
 
 } 
 
 
 
 catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
       
 dispatcher = request.getRequestDispatcher("archiver.jsp");
 dispatcher.forward(request, response);
      }
}