package br.com.ufc.es.servlets.dao;

import br.com.ufc.es.servlets.models.Usuario;

public class UsuarioJPADAO extends GenericJPADAO<Usuario> implements UsuarioDAO{
	public UsuarioJPADAO() {
		this.persistentClass = Usuario.class;
	}

}
