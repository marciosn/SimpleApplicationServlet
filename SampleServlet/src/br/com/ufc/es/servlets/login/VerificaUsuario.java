package br.com.ufc.es.servlets.login;

import java.util.ArrayList;
import java.util.List;

import br.com.ufc.es.servlets.dao.UsuarioJPADAO;
import br.com.ufc.es.servlets.models.Usuario;

public class VerificaUsuario {
	private UsuarioJPADAO usuarioDAO;
	
	public VerificaUsuario() {
		usuarioDAO = new UsuarioJPADAO();
	}
	
	public boolean valida(Usuario usuario){
		boolean isValido = false;
		
		System.out.println(usuario.getNome() + " " + usuario.getSenha());
		
		for(Usuario u : getUsuarios()){
			if(u.getNome().equals(usuario.getNome()) && u.getSenha().equals(usuario.getSenha())){
				isValido = true;
			}
		}
		
		return isValido;
	}
	
	public List<Usuario> getUsuarios(){
		List<Usuario> usuarios = new ArrayList<Usuario>();
		
		try {
			usuarios = usuarioDAO.find();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return usuarios;
	}

}
