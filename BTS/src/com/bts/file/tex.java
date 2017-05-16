package com.bts.file;

import java.io.File;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

import javax.servlet.http.Part;

import com.bts.bd.Maconnexion;

public class tex {
	
    public static void main(String   args[]) {
    	Connection con = Maconnexion.seconnecter();
    	String monFichier = "27-CAG-10-21-0002-07042017-081000-788.RCP";
    	//Part filePart = request.getPart("contenent");
    	String fichierContenu= "";
    	String ligne="";
    	//String ligne[]=new ligne[ct]; 
    	try 
        {
        RandomAccessFile raf = new RandomAccessFile(monFichier, "r");
     
       ligne += raf.readLine();
       //fichierContenu = ligne;
        }
    	 catch (IOException e) 
        {
        System.out.println("erreur dans: " + e);
        }	
      
    	
    	
    	int a = ligne.length();
    	char[] tab = new char[a];
    	 
    	for(int i = 0; i < a;i++){
    	     tab[i] = ligne.charAt(i);
    	     System.out.println(tab[i] );
    	}
    	
 try {
				Statement s = con.createStatement();
				String sql = "INSERT INTO  vrt_global (sens,codval,natrem,codrem,codcar,dateope,numlot,codeenr,codedev,rang,mtot,nbrtot,zonlib,filename,datcr) values ('"+tab[1]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"')";
                s.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         
    	
    	
          
       //System.out.println(fichierContenu);
       
    
      }
}