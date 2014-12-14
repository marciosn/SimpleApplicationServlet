package br.com.ufc.es.servlets.models;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity
@Table(name = "Usuario")
@NamedQuery(name = "Usuario.findUsuario", query = "from Usuario")
public class Usuario implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -8197371596722447364L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String nome;
	private String senha;
	private String email;
	
	public Usuario(String nome, String senha, String email) {
		this.nome = nome;
		this.senha = senha;
		this.email = email;
	}
	
	public Usuario(String nome, String senha) {
		this.nome = nome;
		this.senha = senha;
	}
	
	public Usuario() {
		// TODO Auto-generated constructor stub
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}