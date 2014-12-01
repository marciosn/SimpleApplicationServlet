package br.com.ufc.es.servlets.persistencia;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RecuperarArquivoBanco {
	public File getFile( int id ){
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
	    Connection connection = null;
	    try {
			connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/bdweb","postgres", "marciosn");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	    File f = null;
	    try {
	        PreparedStatement ps = connection.prepareStatement("SELECT id, nome, arquivo FROM arquivo WHERE id = ?");
	        ps.setInt(1, id);
	        ResultSet rs = ps.executeQuery();
	        if ( rs.next() ){
	            byte [] bytes = rs.getBytes("arquivo");
	            String nome = rs.getString("nome");
	            
	            String path = "C:"+File.separator+"hello"+File.separator+ nome;
	 
	            //converte o array de bytes em file
	            f = new File(path);
	            f.mkdirs();
	            FileOutputStream fos = new FileOutputStream( f);
	            fos.write( bytes );
	            fos.close();
	        }
	        rs.close();
	        ps.close();
	        connection.close();
	        return f;
	} catch (SQLException ex) {
	ex.printStackTrace();
	}
	catch (IOException ex) {
	ex.printStackTrace();
	}
	return null;
	}

}
