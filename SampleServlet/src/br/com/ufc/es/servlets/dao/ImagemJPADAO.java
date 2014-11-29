package br.com.ufc.es.servlets.dao;

import br.com.ufc.es.servlets.models.Imagem;

public class ImagemJPADAO extends GenericJPADAO<Imagem> implements ImagemDAO{
	public ImagemJPADAO() {
		this.persistentClass = Imagem.class;
	}
	
}
