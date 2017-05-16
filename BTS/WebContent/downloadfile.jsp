<%@ page import="java.sql.*,java.io.*,java.util.*" %> 
<% Connection con = Maconnexion.seconnecter(); %>
<%@page import="com.bts.bd.*"%>

<%

if(request.getParameter("imgid")!=null && request.getParameter("imgid")!="")
{
	int id =  Integer.parseInt(request.getParameter("imgid"));

	String filename = "fichier"+id+".txt";
	
	try{      
		     
		Statement st1=con.createStatement();
		String strQuery = "select contenent from fichier where id	="+id;
		
		ResultSet rs1 = st1.executeQuery(strQuery);
	
		String imgLen="";
		if(rs1.next()){
			imgLen = rs1.getString(1);
	   	}  
		rs1 = st1.executeQuery(strQuery);
		if(rs1.next()){
			int len = imgLen.length();
			byte [] rb = new byte[len];
			InputStream readImg = rs1.getBinaryStream(1);
			int index=readImg.read(rb, 0, len);  
			st1.close();
			response.reset();
			response.setContentType("application/pdf");
			response.setHeader("Content-disposition","attachment; filename=" +filename);
			response.getOutputStream().write(rb,0,len); 
			response.getOutputStream().flush();        
		}
	}
	catch (Exception e){
		e.printStackTrace();
	}
}
%>
