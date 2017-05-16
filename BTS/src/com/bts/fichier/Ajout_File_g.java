package com.bts.fichier;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.swing.JOptionPane;

import com.bts.bd.Maconnexion;


@MultipartConfig(maxFileSize = 16177215)	// upload file's size up to 16MB
public class Ajout_File_g extends HttpServlet {
	
	
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// gets values of text fields
		Connection con = Maconnexion.seconnecter();
		String lastName = request.getParameter("lastName");
		//int id=1;
		InputStream inputStream = null;	// input stream of the upload file
		
		// obtains the upload file part in this multipart request
		Part filePart = request.getPart("contenent");
		//String lastName=filePart.getName();
		if (filePart != null) {
			// prints out some information for debugging
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			
			// obtains input stream of the upload file
			inputStream = filePart.getInputStream();
		}
		
		
		String message = null;	// message will be sent back to client
		
		try {
			// connects to the database
		
			// constructs SQL statement
			String sql = "INSERT INTO  gbancaire (lastName, contenent) values (?, ?)";
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
		} catch (SQLException ex) {
			message = "ERROR: " + ex.getMessage();
			ex.printStackTrace();
		} finally {
			if (con != null) {
				// closes the database connection
				try {
					con.close();
				} catch (SQLException ex) {
					ex.printStackTrace();
				}
			}
			// sets the message in request scope
			request.setAttribute("Message", message);
			
			// forwards to the message page
			getServletContext().getRequestDispatcher("/fichegbancaire.jsp").forward(request, response);
		}
		 JOptionPane.showMessageDialog(null, "Fichier enregistré");
	}
}