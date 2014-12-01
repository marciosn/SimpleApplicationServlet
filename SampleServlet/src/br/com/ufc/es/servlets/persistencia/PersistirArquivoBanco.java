package br.com.ufc.es.servlets.persistencia;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PersistirArquivoBanco {
	
	public boolean insertFile(File file){
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
	    try {
	        PreparedStatement ps = connection.prepareStatement("INSERT INTO arquivo( id, nome, arquivo ) VALUES ( nextval('seq_arquivo'), ?, ? )");
	 
	        //converte o objeto file em array de bytes
	        InputStream is = new FileInputStream( file );
	        byte[] bytes = new byte[(int)file.length() ];
	        int offset = 0;
	        int numRead = 0;
	        while (offset < bytes.length
	               && (numRead=is.read(bytes, offset, bytes.length-offset)) >= 0) {
	            offset += numRead;
	        }
	 
	        ps.setString( 1, file.getName() );
	        ps.setBytes( 2, bytes );
	        ps.execute();
	        ps.close();
	        connection.close();
	        return true;
	 
	    } catch (SQLException ex) {
	        ex.printStackTrace();
	    } catch (IOException ex) {
	        ex.printStackTrace();
	    }
		return false;
	}

}
