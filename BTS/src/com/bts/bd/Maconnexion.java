package com.bts.bd;

import java.sql.*;
/**
 *
 * @author mourad
 */
public class Maconnexion {

    
    public static Connection seconnecter(){
         String pilote = "com.mysql.jdbc.Driver";
          Connection connexion=null;
          //String u= "?useUnicode=true&characterEncoding=UTF-8";
        try{
            Class.forName(pilote);
            
            connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/bts","root","");
         }catch (Exception e){
          // JOptionPane.showMessageDialog(this,"erreur: ");
           // return 0;
        }
         return connexion;
    }
}

