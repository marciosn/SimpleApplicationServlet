package br.com.ufc.es.servlets.models;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/*@Entity
@Table(name = "Imagem")
@NamedQuery(name = "Imagem.findImagem", query = "from Imagem")*/
public class Imagem implements Serializable{	
	private static final long serialVersionUID = -923044072385876267L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String nameImg;
	@Basic(optional = false,fetch = FetchType.LAZY)  
	@Column(name = "imagem") 
	private byte[] imagem;
	
	public Imagem() {
		// TODO Auto-generated constructor stub
	}
	
	public String getNameImg() {
		return nameImg;
	}
	public void setNameImg(String nameImg) {
		this.nameImg = nameImg;
	}
	public byte[] getImagem() {
		return imagem;
	}
	public void setImagem(byte[] imagem) {
		this.imagem = imagem;
	}

}
