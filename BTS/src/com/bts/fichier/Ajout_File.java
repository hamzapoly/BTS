package com.bts.fichier;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URI;
import java.nio.file.FileSystem;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.WatchKey;
import java.nio.file.WatchService;
import java.nio.file.WatchEvent.Kind;
import java.nio.file.WatchEvent.Modifier;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.logging.Level;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;
import javax.websocket.Session;

import com.bts.bd.Maconnexion;
import com.sun.xml.internal.ws.api.pipe.NextAction;

@WebServlet("/upload")
@MultipartConfig(maxFileSize = 16177215)	// upload file's size up to 16MB
public class Ajout_File extends HttpServlet {
	
	
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// gets values of text fields
		Connection con = Maconnexion.seconnecter();
		/*String lastName = request.getParameter("file");*/
		//int id=1;
		InputStream inputStream = null;	// input stream of the upload file
		
		// obtains the upload file part in this multipart request
		Part filePart = request.getPart("file");
		inputStream = filePart.getInputStream();

		BufferedReader reader = new BufferedReader(new InputStreamReader(filePart.getInputStream()));
		String line="";
		StringBuffer sb = new StringBuffer();
		int i=0;
		while (reader.readLine()!= null) {
			i++;
			line=reader.readLine();
			sb=sb.append(line);
			System.out.println(sb);
			}
		
		System.out.println(filePart.getSubmittedFileName());
		String lastName=filePart.getSubmittedFileName();
		//String lastName=filePart.getName();
		/*if (filePart != null) {
			// prints out some information for debugging
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			
			// obtains input stream of the upload file
			inputStream = filePart.getInputStream();
		}*/
		
    	OutputStream env = null;

		String message = null;	// message will be sent back to client

		try {
			// connects to the database
		
			// constructs SQL statement
			String sql ="SELECT * from fichier where lastName = "+lastName;
            Statement instruction = con.createStatement();
            ResultSet res = instruction.executeQuery(sql);
            if (res.next()){
            	message="Le fichier a déjà été envoyé et archivé";
            }else {
			String sql1 = "INSERT INTO fichier (lastName, contenent) values (?, ?)";
			PreparedStatement statement = con.prepareStatement(sql);
			
			//statement.setInt(1, id);
			statement.setString(1, lastName);
			if (inputStream != null) {
				// fetches input stream of the upload file for the blob column
				statement.setBlob(2, inputStream);
			}
			// sends the statement to the database server
			int row = statement.executeUpdate();
			if (row > 0) {
				message = "File uploaded and saved into database";
			}
            }

		} catch (SQLException ex) {
			message = "ERROR: " + ex.getMessage();
			ex.printStackTrace();
		} 
		String fileenv ;
        int index =lastName.indexOf(".");
        String ext = lastName.substring(0,index);
		//System.out.println(fileenv);
        //Path fileToDeletePath = Paths.get("D:/bts/");
        //Files.delete(fileToDeletePath);
        System.out.println("Files deleted");
			try{
			env = new FileOutputStream(new File("D:/bts/Envoyé/" + File.separator
	                + ext+".ENV"));	
			int read = 0;

	        final byte[] bytes = new byte[1024];

	        while ((read = inputStream.read(bytes)) != -1) {
	            env.write(bytes, 0, read);
	        }
	        //writer.println("New file " + lastName + " created at " + "D:/bts/Envoyé/");
	    } catch (FileNotFoundException fne) {
	    		fne.getMessage();
	    } finally {
	        if (env != null) {
	            env.close();
	        }
	        if (inputStream != null) {
	        	inputStream.close();
	        }

	    }
			/*Part Part = request.getPart("contenent");
		   	//String s3=filePart.getName();
		   	//tring valeurChamp = getValeur(filePart);
	    	 RequestDispatcher dispatcher = null;
	    	// InputStream inputStream = filePart.getInputStream();
	    	 //BufferedReader fichier = new BufferedReader(new FileReader(monFichier));
	    	String ligne="";
	    
	    		BufferedReader reader = new BufferedReader( new InputStreamReader(Part.getInputStream(), "UTF-8" ) );
	    	    StringBuilder valeur = new StringBuilder();
	    	
	        	char[] tab = new char[1024];
	        	//String [] tab2=new String[1];
	        	int longueur=0;
	        	while ( ( longueur = reader.read( tab ) ) > 0 ) {
	    	        valeur.append( tab, 0, longueur );
	    	        System.out.println(valeur.toString()); 
	    	    }
	    	   
	    	
	        String k="";
	        k+=""+tab[1]+tab[2];
	    	String h="";
	    	h+=""+tab[4]+tab[5];
	    
	    	String g="";
	    	
	    	g+=""+tab[6]+tab[7]+tab[8]+tab[9]+tab[10]+tab[11]+tab[12]+tab[13];
	    	//System.out.println(g);
	    	
	    	String r="";
	    	r+=""+tab[18]+tab[19];
	    	
	    	String j="";
	    	j+=""+tab[20]+tab[21]+tab[23];
	    	
	    	String l="";
	    	l+=""+tab[33]+tab[34]+tab[35]+tab[36]+tab[37]+tab[38]+tab[39]+tab[40]+tab[41];
	    	
	    	String n="";
	    	n+=""+tab[46]+tab[47];
	    	
	    	
	    	
	    	
	    	
	    	
	    	
	    	
	    	
	    	
	 try {
					Statement s = con.createStatement();
					String sql = "INSERT INTO  vrt_global (sens,codval,natrem,codrem,codcar,dateope,numlot,codeenr,codedev,rang,mtot,nbrtot) values ('"+tab[0]+"','"+k+"','"+tab[3]+"','"+h+"','0','"+g+"','"+tab[17]+"','"+r+"','"+j+"','"+tab[24]+"','"+l+"','"+n+"')";
	                s.executeUpdate(sql);
				
	 
	 
	 } 
	 
	 
	 
	 catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}*/
			
			// forwards to the message page
			getServletContext().getRequestDispatcher("/accueil.jsp").forward(request, response);
			request.getSession().setAttribute("message", "Le fichié est bien archivé et envoyé");
		 
	}
}