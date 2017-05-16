
package com.bts.fichier;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

import com.bts.bd.Maconnexion;





public class tex {
	
    public static void main(String   args[]) {
    	Connection con = Maconnexion.seconnecter();
    	String monFichier = "27-CAG-10-21-0002-07042017-081000-788.RCP";
    	//Part filePart = request.getPart("contenent");
    	String fichierContenu= "";
    	String ligne="";
    	//String ligne[]=new ligne[ct]; 
    	//BufferedReader br=new BufferedReader(new FileReader(monFichier));
    			String line;
    
    	
    	try 
        {
        RandomAccessFile raf = new RandomAccessFile(monFichier, "r");
     
     int k=0;
       ligne += raf.readLine();
       while(ligne!=null)
   	{k++;
    	   System.out.println(ligne.charAt(k) );
   		
   		
   	}
       //fichierContenu = ligne;
       raf.read();
       int i=raf.readInt();
        }
    	 catch (IOException e) 
        {
        System.out.println("erreur dans: " + e);
        }	
      
    	
    	
    	int a = ligne.length();
    	char[] tab = new char[a];
    	
    	for(int i = 0; i < a;i++)
    		{
    	     tab[i] = ligne.charAt(i);
    	   System.out.println(tab[i] );
    	}
    	
    	String p="";
    	p+=""+tab[1]+tab[2];
    	//System.out.println(p );
    	
    	//tab[1]+tab[2];
    	//String  p=String.valueOf(tab[1])+String.valueOf(tab[2]);
    	//System.out.println(tab[1]+tab[2] );
 /*try {
				Statement s = con.createStatement();
				String sql = "INSERT INTO  vrt_global (sens,codval,natrem,codrem,codcar,dateope,numlot,codeenr,codedev,rang,mtot,nbrtot,zonlib,filename,datcr) values ('"+tab[0]+"','"+p+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"','"+tab[2]+"')";
                s.executeUpdate(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
         
    	*/
    	
          
       //System.out.println(fichierContenu);
       
    
      }
}