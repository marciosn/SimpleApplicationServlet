package br.com.ufc.es.servlets.testes;

import java.util.List;

import br.com.ufc.es.servlets.dao.UsuarioJPADAO;
import br.com.ufc.es.servlets.models.Usuario;

public class TesteUsuario {
	public static void main(String[] args) {
		UsuarioJPADAO usuarioDAO = new UsuarioJPADAO();
		List<Usuario> usuarios = usuarioDAO.find();
		
		for(Usuario u: usuarios){
			System.out.println("Nome: " + u.getNome());
			System.out.println("Senha: " + u.getSenha());
			System.out.println("Email: " + u.getNome());
			System.out.println("=========================");
		}
		usuarioDAO.close();
	}

}
