package br.com.ufc.es.servlets.testes;

import br.com.ufc.es.servlets.dao.UsuarioJPADAO;
import br.com.ufc.es.servlets.models.Usuario;

public class TestaInsereBanco {
	public static void main(String[] args) {
		
		Usuario usuario = new Usuario("marcio", "123455","marcio@gmail.com");
		Usuario usuario2 = new Usuario("marciosouza", "999999","marcio@gmail.com");
		UsuarioJPADAO usuarioDAO = new UsuarioJPADAO();
		
		try {
			usuarioDAO.beginTransaction();
			usuarioDAO.save(usuario2);
			usuarioDAO.commit();
		} catch (Exception e) {
			usuarioDAO.rollback();
			e.printStackTrace();
			System.out.println(e.getMessage());
		} finally{
			usuarioDAO.close();
		}
		
	}

}
